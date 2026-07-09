.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$RestrictionBypass;,
        Landroid/app/AppOpsManager$AttributedOpEntry;,
        Landroid/app/AppOpsManager$HistoricalOpsRequest;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedListener;,
        Landroid/app/AppOpsManager$OnOpStartedListener;,
        Landroid/app/AppOpsManager$OnOpNotedListener;,
        Landroid/app/AppOpsManager$AppOpModeQuery;,
        Landroid/app/AppOpsManager$NotedOp;,
        Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;,
        Landroid/app/AppOpsManager$OnOpNotedCallback;,
        Landroid/app/AppOpsManager$HistoricalOps;,
        Landroid/app/AppOpsManager$NoteOpEvent;,
        Landroid/app/AppOpsManager$OpEventProxyInfo;,
        Landroid/app/AppOpsManager$AppOpsCollector;,
        Landroid/app/AppOpsManager$OpNotedCallbackFlags;,
        Landroid/app/AppOpsManager$NotedOpCollectionMode;,
        Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpNotedInternalListener;,
        Landroid/app/AppOpsManager$HistoricalOp;,
        Landroid/app/AppOpsManager$AttributedHistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalPackageOps;,
        Landroid/app/AppOpsManager$HistoricalUidOps;,
        Landroid/app/AppOpsManager$HistoricalOpsRequestFilter;,
        Landroid/app/AppOpsManager$OpHistoryFlags;,
        Landroid/app/AppOpsManager$HistoricalOpsVisitor;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$ShouldCollectNoteOp;,
        Landroid/app/AppOpsManager$AppOpString;,
        Landroid/app/AppOpsManager$DataBucketKey;,
        Landroid/app/AppOpsManager$SamplingStrategy;,
        Landroid/app/AppOpsManager$AttributionFlags;,
        Landroid/app/AppOpsManager$OpFlags;,
        Landroid/app/AppOpsManager$UidState;,
        Landroid/app/AppOpsManager$Mode;,
        Landroid/app/AppOpsManager$HistoricalMode;
    }
.end annotation


# static fields
.field private static final APP_OP_MODE_CACHING_API:Ljava/lang/String; = "getAppOpMode"

.field private static final APP_OP_MODE_CACHING_NAME:Ljava/lang/String; = "appOpModeCache"

.field private static final APP_OP_MODE_CACHING_SIZE:I = 0x800

.field private static final APP_OP_PERMISSION_PACKAGE_OPS:[I

.field private static final APP_OP_PERMISSION_UID_OPS:[I

.field public static final ATTRIBUTION_CHAIN_ID_NONE:I = -0x1

.field public static final ATTRIBUTION_FLAGS_NONE:I = 0x0

.field public static final ATTRIBUTION_FLAG_ACCESSOR:I = 0x1

.field public static final ATTRIBUTION_FLAG_INTERMEDIARY:I = 0x2

.field public static final ATTRIBUTION_FLAG_RECEIVER:I = 0x4

.field public static final ATTRIBUTION_FLAG_TRUSTED:I = 0x8

.field private static final BITMASK_LEN:I = 0x3

.field public static final CALL_BACK_ON_CHANGED_LISTENER_WITH_SWITCHED_OP_CHANGE:J = 0x8d50f1eL

.field public static final CALL_BACK_ON_SWITCHED_OP:I = 0x2

.field private static final COLLECT_ASYNC:I = 0x3

.field private static final COLLECT_SELF:I = 0x1

.field private static final COLLECT_SYNC:I = 0x2

.field private static final DONT_COLLECT:I = 0x0

.field public static final FILTER_BY_ATTRIBUTION_TAG:I = 0x4

.field public static final FILTER_BY_OP_NAMES:I = 0x8

.field public static final FILTER_BY_PACKAGE_NAME:I = 0x2

.field public static final FILTER_BY_UID:I = 0x1

.field private static final FLAGS_MASK:I = -0x1

.field private static final FULL_LOG:Ljava/lang/String; = "privacy_attribution_tag_full_log_enabled"

.field public static final HISTORICAL_MODE_DISABLED:I = 0x0

.field public static final HISTORICAL_MODE_ENABLED_ACTIVE:I = 0x1

.field public static final HISTORICAL_MODE_ENABLED_PASSIVE:I = 0x2

.field public static final HISTORY_FLAGS_ALL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HISTORY_FLAG_AGGREGATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HISTORY_FLAG_DISCRETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field public static final KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field public static final KEY_HISTORICAL_OPS:Ljava/lang/String; = "historical_ops"

.field public static final KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"

.field public static final MAX_PRIORITY_UID_STATE:I = 0x64

.field private static final MAX_UNFORWARDED_OPS:I = 0xa

.field public static final MIN_PRIORITY_UID_STATE:I = 0x2bc

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_FOREGROUND:I = 0x4

.field public static final MODE_IGNORED:I = 0x1

.field public static final MODE_NAMES:[Ljava/lang/String;

.field private static final NOTE_OP_BATCHING_DELAY_MILLIS:I = 0x3e8

.field public static final NOTE_OP_COLLECTION_ENABLED:Z = false

.field public static final OPSTR_ACCEPT_HANDOVER:Ljava/lang/String; = "android:accept_handover"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_ACCESSIBILITY:Ljava/lang/String; = "android:access_accessibility"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_MEDIA_LOCATION:Ljava/lang/String; = "android:access_media_location"

.field public static final OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_RESTRICTED_SETTINGS:Ljava/lang/String; = "android:access_restricted_settings"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACTIVATE_PLATFORM_VPN:Ljava/lang/String; = "android:activate_platform_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACTIVITY_RECOGNITION:Ljava/lang/String; = "android:activity_recognition"

.field public static final OPSTR_ACTIVITY_RECOGNITION_SOURCE:Ljava/lang/String; = "android:activity_recognition_source"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final OPSTR_ARCHIVE_ICON_OVERLAY:Ljava/lang/String; = "android:archive_icon_overlay"

.field public static final OPSTR_ASSIST_SCREENSHOT:Ljava/lang/String; = "android:assist_screenshot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ASSIST_STRUCTURE:Ljava/lang/String; = "android:assist_structure"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android:audio_accessibility_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUTO_REVOKE_MANAGED_BY_INSTALLER:Ljava/lang/String; = "android:auto_revoke_managed_by_installer"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:Ljava/lang/String; = "android:auto_revoke_permissions_if_unused"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android:bind_accessibility_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_BLUETOOTH_ADVERTISE:Ljava/lang/String; = "android:bluetooth_advertise"

.field public static final OPSTR_BLUETOOTH_CONNECT:Ljava/lang/String; = "android:bluetooth_connect"

.field public static final OPSTR_BLUETOOTH_SCAN:Ljava/lang/String; = "android:bluetooth_scan"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_CAMERA_SANDBOXED:Ljava/lang/String; = "android:camera_sandboxed"

.field public static final OPSTR_CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD:Ljava/lang/String; = "android:capture_consentless_bugreport_on_userdebug_build"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_COARSE_LOCATION_SOURCE:Ljava/lang/String; = "android:coarse_location_source"

.field public static final OPSTR_CONTROL_AUDIO:Ljava/lang/String; = "android:control_audio"

.field public static final OPSTR_CONTROL_AUDIO_PARTIAL:Ljava/lang/String; = "android:control_audio_partial"

.field public static final OPSTR_CREATE_ACCESSIBILITY_OVERLAY:Ljava/lang/String; = "android:create_accessibility_overlay"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_DEPRECATED_2:Ljava/lang/String; = "android:deprecated_2"

.field public static final OPSTR_DEPRECATED_3:Ljava/lang/String; = "android:deprecated_3"

.field public static final OPSTR_DEPRECATED_4:Ljava/lang/String; = "android:deprecated_4"

.field public static final OPSTR_EMERGENCY_LOCATION:Ljava/lang/String; = "android:emergency_location"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ENABLE_MOBILE_DATA_BY_USER:Ljava/lang/String; = "android:enable_mobile_data_by_user"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ESTABLISH_VPN_MANAGER:Ljava/lang/String; = "android:establish_vpn_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ESTABLISH_VPN_SERVICE:Ljava/lang/String; = "android:establish_vpn_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_FINE_LOCATION_SOURCE:Ljava/lang/String; = "android:fine_location_source"

.field public static final OPSTR_FOREGROUND_SERVICE_SPECIAL_USE:Ljava/lang/String; = "android:foreground_service_special_use"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_GPS:Ljava/lang/String; = "android:gps"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android:interact_across_profiles"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_LEGACY_STORAGE:Ljava/lang/String; = "android:legacy_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_LOADER_USAGE_STATS:Ljava/lang/String; = "android:loader_usage_stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MANAGE_CREDENTIALS:Ljava/lang/String; = "android:manage_credentials"

.field public static final OPSTR_MANAGE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:manage_external_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android:manage_ipsec_tunnels"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MANAGE_MEDIA:Ljava/lang/String; = "android:manage_media"

.field public static final OPSTR_MANAGE_ONGOING_CALLS:Ljava/lang/String; = "android:manage_ongoing_calls"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MEDIA_ROUTING_CONTROL:Ljava/lang/String; = "android:media_routing_control"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_NEARBY_WIFI_DEVICES:Ljava/lang/String; = "android:nearby_wifi_devices"

.field public static final OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_NO_ISOLATED_STORAGE:Ljava/lang/String; = "android:no_isolated_storage"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final OPSTR_PHONE_CALL_CAMERA:Ljava/lang/String; = "android:phone_call_camera"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PHONE_CALL_MICROPHONE:Ljava/lang/String; = "android:phone_call_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_QUERY_ALL_PACKAGES:Ljava/lang/String; = "android:query_all_packages"

.field public static final OPSTR_RANGING:Ljava/lang/String; = "android:ranging"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER:Ljava/lang/String; = "android:rapid_clear_notifications_by_listener"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_DEVICE_IDENTIFIERS:Ljava/lang/String; = "android:read_device_identifiers"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_HEART_RATE:Ljava/lang/String; = "android:read_heart_rate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_AUDIO:Ljava/lang/String; = "android:read_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_IMAGES:Ljava/lang/String; = "android:read_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_VIDEO:Ljava/lang/String; = "android:read_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_VISUAL_USER_SELECTED:Ljava/lang/String; = "android:read_media_visual_user_selected"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_OXYGEN_SATURATION:Ljava/lang/String; = "android:read_oxygen_saturation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SKIN_TEMPERATURE:Ljava/lang/String; = "android:read_skin_temperature"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_READ_SYSTEM_GRAMMATICAL_GENDER:Ljava/lang/String; = "android:read_system_grammatical_gender"

.field public static final OPSTR_READ_WRITE_HEALTH_DATA:Ljava/lang/String; = "android:read_write_health_data"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RECEIVE_AMBIENT_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_ambient_trigger_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android:receive_emergency_broadcast"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO:Ljava/lang/String; = "android:receive_explicit_user_interaction_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SANDBOX_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_sandbox_trigger_audio"

.field public static final OPSTR_RECEIVE_SENSITIVE_NOTIFICATIONS:Ljava/lang/String; = "android:receive_sensitive_notifications"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_RECORD_AUDIO_HOTWORD:Ljava/lang/String; = "android:record_audio_hotword"

.field public static final OPSTR_RECORD_AUDIO_OUTPUT:Ljava/lang/String; = "android:record_audio_output"

.field public static final OPSTR_RECORD_AUDIO_SANDBOXED:Ljava/lang/String; = "android:record_audio_sandboxed"

.field public static final OPSTR_RECORD_INCOMING_PHONE_AUDIO:Ljava/lang/String; = "android:record_incoming_phone_audio"

.field public static final OPSTR_REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android:request_delete_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android:request_install_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RESERVED_FOR_TESTING:Ljava/lang/String; = "android:reserved_for_testing"

.field public static final OPSTR_RUN_ANY_IN_BACKGROUND:Ljava/lang/String; = "android:run_any_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RUN_IN_BACKGROUND:Ljava/lang/String; = "android:run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RUN_USER_INITIATED_JOBS:Ljava/lang/String; = "android:run_user_initiated_jobs"

.field public static final OPSTR_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android:schedule_exact_alarm"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SMS_FINANCIAL_TRANSACTIONS:Ljava/lang/String; = "android:sms_financial_transactions"

.field public static final OPSTR_START_FOREGROUND:Ljava/lang/String; = "android:start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:Ljava/lang/String; = "android:system_exempt_from_activity_bg_start_restriction"

.field public static final OPSTR_SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:Ljava/lang/String; = "android:system_exempt_from_dismissible_notifications"

.field public static final OPSTR_SYSTEM_EXEMPT_FROM_HIBERNATION:Ljava/lang/String; = "android:system_exempt_from_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS:Ljava/lang/String; = "android:system_exempt_from_power_restrictions"

.field public static final OPSTR_SYSTEM_EXEMPT_FROM_SUSPENSION:Ljava/lang/String; = "android:system_exempt_from_suspension"

.field public static final OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TURN_SCREEN_ON:Ljava/lang/String; = "android:turn_screen_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_UNARCHIVAL_CONFIRMATION:Ljava/lang/String; = "android:unarchival_support"

.field public static final OPSTR_USE_BIOMETRIC:Ljava/lang/String; = "android:use_biometric"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_FULL_SCREEN_INTENT:Ljava/lang/String; = "android:use_full_screen_intent"

.field public static final OPSTR_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:Ljava/lang/String; = "android:use_icc_auth_with_device_identifier"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_UWB_RANGING:Ljava/lang/String; = "android:uwb_ranging"

.field public static final OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MEDIA_AUDIO:Ljava/lang/String; = "android:write_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MEDIA_IMAGES:Ljava/lang/String; = "android:write_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MEDIA_VIDEO:Ljava/lang/String; = "android:write_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_SYSTEM_PREFERENCES:Ljava/lang/String; = "android:write_system_preferences"

.field public static final OPSTR_WRITE_WALLPAPER:Ljava/lang/String; = "android:write_wallpaper"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

.field public static final OP_ACCEPT_HANDOVER:I = 0x4a

.field public static final OP_ACCESS_ACCESSIBILITY:I = 0x58

.field public static final OP_ACCESS_MEDIA_LOCATION:I = 0x5a

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACCESS_RESTRICTED_SETTINGS:I = 0x77

.field public static final OP_ACTIVATE_PLATFORM_VPN:I = 0x5e

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ACTIVITY_RECOGNITION:I = 0x4f

.field public static final OP_ACTIVITY_RECOGNITION_SOURCE:I = 0x71

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final OP_ARCHIVE_ICON_OVERLAY:I = 0x91

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_AUTO_REVOKE_MANAGED_BY_INSTALLER:I = 0x62

.field public static final OP_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:I = 0x61

.field public static final OP_BIND_ACCESSIBILITY_SERVICE:I = 0x49

.field public static final OP_BLUETOOTH_ADVERTISE:I = 0x72

.field public static final OP_BLUETOOTH_CONNECT:I = 0x6f

.field public static final OP_BLUETOOTH_SCAN:I = 0x4d

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_CAMERA_SANDBOXED:I = 0x86

.field public static final OP_CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD:I = 0x83

.field public static final OP_CHANGE_WIFI_STATE:I = 0x47

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_COARSE_LOCATION_SOURCE:I = 0x6d

.field public static final OP_CONTROL_AUDIO:I = 0x9a

.field public static final OP_CONTROL_AUDIO_PARTIAL:I = 0x9b

.field public static final OP_CREATE_ACCESSIBILITY_OVERLAY:I = 0x8a

.field private static final OP_DEPRECATED_1:I = 0x60

.field private static final OP_DEPRECATED_2:I = 0x84

.field private static final OP_DEPRECATED_3:I = 0x89

.field private static final OP_DEPRECATED_4:I = 0x90

.field public static final OP_EMERGENCY_LOCATION:I = 0x93

.field public static final OP_ENABLE_MOBILE_DATA_BY_USER:I = 0x8c

.field public static final OP_ESTABLISH_VPN_MANAGER:I = 0x76

.field public static final OP_ESTABLISH_VPN_SERVICE:I = 0x75

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_FINE_LOCATION_SOURCE:I = 0x6c

.field public static final OP_FLAGS_ALL:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAGS_ALL_TRUSTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_SELF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_TRUSTED_PROXIED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_TRUSTED_PROXY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_UNTRUSTED_PROXIED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_UNTRUSTED_PROXY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FOREGROUND_SERVICE_SPECIAL_USE:I = 0x7f

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final OP_INTERACT_ACROSS_PROFILES:I = 0x5d

.field public static final OP_LEGACY_STORAGE:I = 0x57

.field public static final OP_LOADER_USAGE_STATS:I = 0x5f

.field public static final OP_MANAGE_CREDENTIALS:I = 0x68

.field public static final OP_MANAGE_EXTERNAL_STORAGE:I = 0x5c

.field public static final OP_MANAGE_IPSEC_TUNNELS:I = 0x4b

.field public static final OP_MANAGE_MEDIA:I = 0x6e

.field public static final OP_MANAGE_ONGOING_CALLS:I = 0x67

.field public static final OP_MEDIA_ROUTING_CONTROL:I = 0x8b

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEARBY_WIFI_DEVICES:I = 0x74

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field private static final OP_NOTED_CALLBACK_FLAG_ALL:I = 0x1

.field public static final OP_NOTED_CALLBACK_FLAG_IGNORE_ASYNC:I = 0x1

.field public static final OP_NO_ISOLATED_STORAGE:I = 0x63

.field public static final OP_PHONE_CALL_CAMERA:I = 0x65

.field public static final OP_PHONE_CALL_MICROPHONE:I = 0x64

.field public static final OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_QUERY_ALL_PACKAGES:I = 0x5b

.field public static final OP_RANGING:I = 0x97

.field public static final OP_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER:I = 0x8e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_DEVICE_IDENTIFIERS:I = 0x59

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_HEART_RATE:I = 0x95

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MEDIA_AUDIO:I = 0x51

.field public static final OP_READ_MEDIA_IMAGES:I = 0x55

.field public static final OP_READ_MEDIA_VIDEO:I = 0x53

.field public static final OP_READ_MEDIA_VISUAL_USER_SELECTED:I = 0x7b

.field public static final OP_READ_OXYGEN_SATURATION:I = 0x98

.field public static final OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SKIN_TEMPERATURE:I = 0x96

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_READ_SYSTEM_GRAMMATICAL_GENDER:I = 0x8f

.field public static final OP_READ_WRITE_HEALTH_DATA:I = 0x7e

.field public static final OP_RECEIVE_AMBIENT_TRIGGER_AUDIO:I = 0x78

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO:I = 0x79

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SANDBOX_TRIGGER_AUDIO:I = 0x88

.field public static final OP_RECEIVE_SENSITIVE_NOTIFICATIONS:I = 0x94

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_RECORD_AUDIO_HOTWORD:I = 0x66

.field public static final OP_RECORD_AUDIO_OUTPUT:I = 0x6a

.field public static final OP_RECORD_AUDIO_SANDBOXED:I = 0x87

.field public static final OP_RECORD_INCOMING_PHONE_AUDIO:I = 0x73

.field public static final OP_REQUEST_DELETE_PACKAGES:I = 0x48

.field public static final OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final OP_RESERVED_FOR_TESTING:I = 0x8d

.field public static final OP_RUN_ANY_IN_BACKGROUND:I = 0x46

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final OP_RUN_USER_INITIATED_JOBS:I = 0x7a

.field public static final OP_SCHEDULE_EXACT_ALARM:I = 0x6b

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SMS_FINANCIAL_TRANSACTIONS:I = 0x50

.field public static final OP_START_FOREGROUND:I = 0x4c

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:I = 0x82

.field public static final OP_SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:I = 0x7d

.field public static final OP_SYSTEM_EXEMPT_FROM_HIBERNATION:I = 0x81

.field public static final OP_SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS:I = 0x80

.field public static final OP_SYSTEM_EXEMPT_FROM_SUSPENSION:I = 0x7c

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_UNARCHIVAL_CONFIRMATION:I = 0x92

.field public static final OP_USE_BIOMETRIC:I = 0x4e

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_FULL_SCREEN_INTENT:I = 0x85

.field public static final OP_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:I = 0x69

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_UWB_RANGING:I = 0x70

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MEDIA_AUDIO:I = 0x52

.field public static final OP_WRITE_MEDIA_IMAGES:I = 0x56

.field public static final OP_WRITE_MEDIA_VIDEO:I = 0x54

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_SYSTEM_PREFERENCES:I = 0x99

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field private static final RUNTIME_PERMISSION_OPS:[I

.field public static final SAMPLING_STRATEGY_BOOT_TIME_SAMPLING:I = 0x3

.field public static final SAMPLING_STRATEGY_DEFAULT:I = 0x0

.field public static final SAMPLING_STRATEGY_RARELY_USED:I = 0x2

.field public static final SAMPLING_STRATEGY_UNIFORM:I = 0x1

.field public static final SAMPLING_STRATEGY_UNIFORM_OPS:I = 0x4

.field public static final SECURITY_EXCEPTION_ON_INVALID_ATTRIBUTION_TAG_CHANGE:J = 0x901b1a2L

.field private static final SHOULD_COLLECT_NOTE_OP:B = 0x2t

.field private static final SHOULD_COLLECT_NOTE_OP_NOT_INITIALIZED:B = 0x0t

.field private static final SHOULD_NOT_COLLECT_NOTE_OP:B = 0x1t

.field public static final UID_STATES:[I

.field public static final UID_STATE_BACKGROUND:I = 0x258
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_CACHED:I = 0x2bc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_FOREGROUND:I = 0x1f4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_FOREGROUND_SERVICE:I = 0x190
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_FOREGROUND_SERVICE_LOCATION:I = 0x12c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UID_STATE_MAX_LAST_NON_RESTRICTED:I = 0x1f4

.field public static final UID_STATE_NONEXISTENT:I = 0x7fffffff

.field private static final UID_STATE_OFFSET:I = 0x1f

.field public static final UID_STATE_PERSISTENT:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_TOP:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WATCH_FOREGROUND_CHANGES:I = 0x1

.field public static final _NUM_OP:I = 0x9c

.field static final sAppOpInfos:[Landroid/app/AppOpInfo;

.field private static final sAppOpModeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/AppOpsManager$AppOpModeQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sAppOpsToNote:[B

.field private static final sBatchedNoteOpLock:Ljava/lang/Object;

.field private static final sBinderThreadCallingUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sClientId:Landroid/os/IBinder;

.field private static sConfig:Lcom/android/internal/app/MessageSamplingConfig;

.field private static sFullLog:Ljava/lang/Boolean;

.field private static final sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/AppOpsManager$AppOpModeQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sIgnoreAsyncNotedCallback:Z

.field private static sIsBatchedNoteOpCallScheduled:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPendingNotedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$NotedOp;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/app/IAppOpsService;

.field private static sUnforwardedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpActiveChangedListener;",
            "Lcom/android/internal/app/IAppOpsActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpNotedListener;",
            "Lcom/android/internal/app/IAppOpsNotedCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;

.field private final mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpStartedListener;",
            "Lcom/android/internal/app/IAppOpsStartedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method public static synthetic $r8$lambda$ZCdUg5mlmWB8DXCRpS1C_JBbS7Y(Landroid/app/AppOpsManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppOpsManager;->lambda$batchDuplicateNoteOps$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    .locals 0

    sput-object p0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetFormattedStackTrace()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;
    .locals 1

    invoke-static {}, Landroid/app/AppOpsManager;->getService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisCollectingStackTraces()Z
    .locals 1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .locals 0

    invoke-static {p0}, Landroid/app/AppOpsManager;->readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/AppOpsManager;->writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 53

    .line 232
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 263
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    .line 266
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 278
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    .line 280
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    .line 308
    new-instance v2, Landroid/app/AppOpsManager$1;

    invoke-direct {v2}, Landroid/app/AppOpsManager$1;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 496
    const-string v2, "default"

    const-string v3, "foreground"

    const-string v4, "allow"

    const-string/jumbo v5, "ignore"

    const-string v6, "deny"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 626
    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    .line 2598
    const/16 v3, 0x9c

    new-array v4, v3, [B

    sput-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    .line 2600
    nop

    .line 2653
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->rangingPermissionEnabled()Z

    move-result v4

    const/16 v5, 0x97

    const/4 v6, -0x1

    if-eqz v4, :cond_0

    move/from16 v46, v5

    goto :goto_0

    :cond_0
    move/from16 v46, v6

    .line 2657
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    const/16 v7, 0x95

    if-eqz v4, :cond_1

    move/from16 v48, v7

    goto :goto_1

    :cond_1
    move/from16 v48, v6

    .line 2658
    :goto_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    const/16 v8, 0x96

    if-eqz v4, :cond_2

    move/from16 v49, v8

    goto :goto_2

    :cond_2
    move/from16 v49, v6

    .line 2659
    :goto_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    const/16 v9, 0x98

    if-eqz v4, :cond_3

    move/from16 v50, v9

    goto :goto_3

    :cond_3
    move/from16 v50, v6

    :goto_3
    move v4, v7

    const/4 v7, 0x4

    move v10, v8

    const/4 v8, 0x5

    move v11, v9

    const/16 v9, 0x3e

    move v12, v10

    const/16 v10, 0x8

    move v13, v11

    const/16 v11, 0x9

    move v14, v12

    const/16 v12, 0x14

    move v15, v13

    const/16 v13, 0x10

    move/from16 v16, v14

    const/16 v14, 0xe

    move/from16 v17, v15

    const/16 v15, 0x13

    move/from16 v18, v16

    const/16 v16, 0x12

    move/from16 v19, v17

    const/16 v17, 0x39

    move/from16 v20, v18

    const/16 v18, 0x3b

    move/from16 v21, v19

    const/16 v19, 0x3c

    move/from16 v22, v20

    const/16 v20, 0x5a

    move/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    const/16 v22, 0x1

    move/from16 v25, v23

    const/16 v23, 0x33

    move/from16 v26, v24

    const/16 v24, 0x41

    move/from16 v27, v25

    const/16 v25, 0xd

    move/from16 v28, v26

    const/16 v26, 0x6

    move/from16 v29, v27

    const/16 v27, 0x7

    move/from16 v30, v28

    const/16 v28, 0x34

    move/from16 v31, v29

    const/16 v29, 0x35

    move/from16 v32, v30

    const/16 v30, 0x36

    move/from16 v33, v31

    const/16 v31, 0x45

    move/from16 v34, v32

    const/16 v32, 0x4a

    move/from16 v35, v33

    const/16 v33, 0x1b

    move/from16 v36, v34

    const/16 v34, 0x1a

    move/from16 v37, v35

    const/16 v35, 0x38

    move/from16 v38, v36

    const/16 v36, 0x4f

    move/from16 v39, v37

    const/16 v37, 0x51

    move/from16 v40, v38

    const/16 v38, 0x53

    move/from16 v41, v39

    const/16 v39, 0x55

    move/from16 v42, v40

    const/16 v40, 0x7b

    move/from16 v43, v41

    const/16 v41, 0x4d

    move/from16 v44, v42

    const/16 v42, 0x6f

    move/from16 v45, v43

    const/16 v43, 0x72

    move/from16 v47, v44

    const/16 v44, 0x70

    move/from16 v51, v45

    const/16 v45, 0x74

    move/from16 v52, v47

    const/16 v47, 0xb

    move/from16 v0, v52

    filled-new-array/range {v7 .. v50}, [I

    move-result-object v7

    sput-object v7, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    .line 2666
    const/16 v7, 0xa

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    sput-object v7, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    .line 2683
    const/16 v7, 0xf

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    sput-object v7, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    .line 2702
    new-array v7, v3, [Landroid/app/AppOpInfo;

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:coarse_location"

    const-string v10, "COARSE_LOCATION"

    invoke-direct {v8, v1, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2704
    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2705
    const-string/jumbo v9, "no_share_location"

    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2706
    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2707
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    aput-object v8, v7, v1

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:fine_location"

    const-string v11, "FINE_LOCATION"

    const/4 v12, 0x1

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2709
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2710
    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2711
    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2712
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:gps"

    const-string v11, "GPS"

    const/4 v12, 0x2

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2714
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2715
    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2716
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:vibrate"

    const-string v11, "VIBRATE"

    const/4 v12, 0x3

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2718
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    const-string v10, "android.permission.VIBRATE"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2719
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_contacts"

    const-string v11, "READ_CONTACTS"

    const/4 v12, 0x4

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2721
    const-string v10, "android.permission.READ_CONTACTS"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2722
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_contacts"

    const-string v11, "WRITE_CONTACTS"

    const/4 v12, 0x5

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2724
    const-string v10, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2725
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_call_log"

    const-string v11, "READ_CALL_LOG"

    const/4 v12, 0x6

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2727
    const-string v10, "android.permission.READ_CALL_LOG"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2728
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2729
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_call_log"

    const-string v11, "WRITE_CALL_LOG"

    invoke-direct {v8, v2, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2731
    const-string v10, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2732
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2733
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    aput-object v8, v7, v2

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_calendar"

    const-string v10, "READ_CALENDAR"

    const/16 v11, 0x8

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2735
    const-string v8, "android.permission.READ_CALENDAR"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2736
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_calendar"

    const-string v10, "WRITE_CALENDAR"

    const/16 v11, 0x9

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2738
    const-string v8, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2739
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:wifi_scan"

    const-string v10, "WIFI_SCAN"

    const/16 v11, 0xa

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2741
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2742
    const-string v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2743
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v8, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v10, 0x1

    invoke-direct {v8, v1, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2744
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2745
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:post_notification"

    const-string v10, "POST_NOTIFICATION"

    const/16 v11, 0xb

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2747
    const-string v8, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2748
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:neighboring_cells"

    const-string v10, "NEIGHBORING_CELLS"

    const/16 v11, 0xc

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xc

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:call_phone"

    const-string v10, "CALL_PHONE"

    const/16 v11, 0xd

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2752
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const-string v8, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2753
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_sms"

    const-string v10, "READ_SMS"

    const/16 v11, 0xe

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2755
    const-string v8, "android.permission.READ_SMS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2756
    const-string/jumbo v8, "no_sms"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2757
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0xe

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_sms"

    const-string v11, "WRITE_SMS"

    const/16 v12, 0xf

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2759
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2760
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0xf

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_sms"

    const-string v11, "RECEIVE_SMS"

    const/16 v12, 0x10

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2762
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2763
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2764
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x10

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_emergency_broadcast"

    const-string v11, "RECEIVE_EMERGENCY_BROADCAST"

    const/16 v12, 0x11

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2766
    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2767
    const-string v10, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2768
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x11

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_mms"

    const-string v11, "RECEIVE_MMS"

    const/16 v12, 0x12

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2770
    const-string v10, "android.permission.RECEIVE_MMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2771
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2772
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x12

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_wap_push"

    const-string v11, "RECEIVE_WAP_PUSH"

    const/16 v12, 0x13

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2774
    const-string v10, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2775
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x13

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:send_sms"

    const-string v11, "SEND_SMS"

    const/16 v12, 0x14

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2777
    const-string v10, "android.permission.SEND_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2778
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2779
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x14

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_icc_sms"

    const-string v11, "READ_ICC_SMS"

    const/16 v12, 0x15

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2781
    const/16 v10, 0xe

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const-string v10, "android.permission.READ_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2782
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2783
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x15

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_icc_sms"

    const-string v11, "WRITE_ICC_SMS"

    const/16 v12, 0x16

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2785
    const/16 v10, 0xf

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2786
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x16

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_settings"

    const-string v11, "WRITE_SETTINGS"

    const/16 v12, 0x17

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2788
    const-string v10, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x17

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:system_alert_window"

    const-string v11, "SYSTEM_ALERT_WINDOW"

    const/16 v12, 0x18

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2791
    const-string v10, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2792
    const-string/jumbo v10, "no_create_windows"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v11, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2793
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2794
    invoke-static {}, Landroid/app/AppOpsManager;->getSystemAlertWindowDefault()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x18

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:access_notifications"

    const-string v11, "ACCESS_NOTIFICATIONS"

    const/16 v12, 0x19

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2797
    const-string v10, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x19

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:camera"

    const-string v11, "CAMERA"

    const/16 v12, 0x1a

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2799
    const-string v10, "android.permission.CAMERA"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2800
    const-string/jumbo v10, "no_camera"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2801
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1a

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:record_audio"

    const-string v11, "RECORD_AUDIO"

    const/16 v12, 0x1b

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2803
    const-string v10, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2804
    const-string/jumbo v10, "no_record_audio"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v1, v11}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2805
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2806
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1b

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:play_audio"

    const-string v11, "PLAY_AUDIO"

    const/16 v12, 0x1c

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1c

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_clipboard"

    const-string v11, "READ_CLIPBOARD"

    const/16 v12, 0x1d

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2810
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1d

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_clipboard"

    const-string v11, "WRITE_CLIPBOARD"

    const/16 v12, 0x1e

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2812
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1e

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:take_media_buttons"

    const-string v11, "TAKE_MEDIA_BUTTONS"

    const/16 v12, 0x1f

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2815
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1f

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:take_audio_focus"

    const-string v11, "TAKE_AUDIO_FOCUS"

    const/16 v12, 0x20

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2817
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x20

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:audio_master_volume"

    const-string v11, "AUDIO_MASTER_VOLUME"

    const/16 v12, 0x21

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2819
    const/16 v10, 0x21

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2820
    const-string/jumbo v10, "no_adjust_volume"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2821
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x21

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_voice_volume"

    const-string v12, "AUDIO_VOICE_VOLUME"

    const/16 v13, 0x22

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2823
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2824
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x22

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_ring_volume"

    const-string v12, "AUDIO_RING_VOLUME"

    const/16 v13, 0x23

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2827
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x23

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_media_volume"

    const-string v12, "AUDIO_MEDIA_VOLUME"

    const/16 v13, 0x24

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2830
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x24

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_alarm_volume"

    const-string v12, "AUDIO_ALARM_VOLUME"

    const/16 v13, 0x25

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2833
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x25

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_notification_volume"

    const-string v12, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v13, 0x26

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2835
    const/16 v11, 0x26

    invoke-virtual {v2, v11}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2836
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2837
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_bluetooth_volume"

    const-string v12, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v13, 0x27

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2840
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x27

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:wake_lock"

    const-string v12, "WAKE_LOCK"

    const/16 v13, 0x28

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2842
    const-string v11, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v11}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2843
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x28

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:monitor_location"

    const-string v12, "MONITOR_LOCATION"

    const/16 v13, 0x29

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2846
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2847
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x29

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:monitor_location_high_power"

    const-string v12, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v13, 0x2a

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2850
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2851
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:get_usage_stats"

    const-string v11, "GET_USAGE_STATS"

    const/16 v12, 0x2b

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v9, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:mute_microphone"

    const-string v11, "MUTE_MICROPHONE"

    const/16 v12, 0x2c

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2855
    const-string/jumbo v9, "no_unmute_microphone"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2856
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:toast_window"

    const-string v11, "TOAST_WINDOW"

    const/16 v12, 0x2d

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2858
    const-string/jumbo v9, "no_create_windows"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v9, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v9, v1, v11, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2859
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2860
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:project_media"

    const-string v11, "PROJECT_MEDIA"

    const/16 v12, 0x2e

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2862
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:activate_vpn"

    const-string v11, "ACTIVATE_VPN"

    const/16 v12, 0x2f

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2864
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:write_wallpaper"

    const-string v11, "WRITE_WALLPAPER"

    const/16 v12, 0x30

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string/jumbo v9, "no_wallpaper"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2867
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x30

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:assist_structure"

    const-string v11, "ASSIST_STRUCTURE"

    const/16 v12, 0x31

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2869
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x31

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:assist_screenshot"

    const-string v11, "ASSIST_SCREENSHOT"

    const/16 v12, 0x32

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2872
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x32

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_phone_state"

    const-string v11, "READ_PHONE_STATE"

    const/16 v12, 0x33

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2874
    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2875
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x33

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:add_voicemail"

    const-string v11, "ADD_VOICEMAIL"

    const/16 v12, 0x34

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2877
    const-string v9, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2878
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x34

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_sip"

    const-string v11, "USE_SIP"

    const/16 v12, 0x35

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2880
    const-string v9, "android.permission.USE_SIP"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2881
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x35

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:process_outgoing_calls"

    const-string v11, "PROCESS_OUTGOING_CALLS"

    const/16 v12, 0x36

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2883
    const/16 v9, 0x36

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2884
    const-string v9, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2885
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x36

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_fingerprint"

    const-string v11, "USE_FINGERPRINT"

    const/16 v12, 0x37

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2887
    const-string v9, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2888
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x37

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:body_sensors"

    const-string v11, "BODY_SENSORS"

    const/16 v12, 0x38

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2890
    const-string v9, "android.permission.BODY_SENSORS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2891
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x38

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_cell_broadcasts"

    const-string v11, "READ_CELL_BROADCASTS"

    const/16 v12, 0x39

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2893
    const-string v9, "android.permission.READ_CELL_BROADCASTS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2894
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x39

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:mock_location"

    const-string v11, "MOCK_LOCATION"

    const/16 v12, 0x3a

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2896
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_external_storage"

    const-string v11, "READ_EXTERNAL_STORAGE"

    const/16 v12, 0x3b

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2899
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:write_external_storage"

    const-string v11, "WRITE_EXTERNAL_STORAGE"

    const/16 v12, 0x3c

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2901
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2902
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:turn_screen_on"

    const-string v11, "TURN_SCREEN_ON"

    const/16 v12, 0x3d

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2904
    const-string v9, "android.permission.TURN_SCREEN_ON"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2905
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:get_accounts"

    const-string v11, "GET_ACCOUNTS"

    const/16 v12, 0x3e

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2907
    const-string v9, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2908
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:run_in_background"

    const-string v11, "RUN_IN_BACKGROUND"

    const/16 v12, 0x3f

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2911
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:audio_accessibility_volume"

    const-string v11, "AUDIO_ACCESSIBILITY_VOLUME"

    const/16 v12, 0x40

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2915
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x40

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_phone_numbers"

    const-string v10, "READ_PHONE_NUMBERS"

    const/16 v11, 0x41

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2917
    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2918
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x41

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:request_install_packages"

    const-string v10, "REQUEST_INSTALL_PACKAGES"

    const/16 v11, 0x42

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2920
    const/16 v9, 0x42

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2921
    const-string v9, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x42

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:picture_in_picture"

    const-string v10, "PICTURE_IN_PICTURE"

    const/16 v11, 0x43

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2923
    const/16 v9, 0x43

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2924
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:instant_app_start_foreground"

    const-string v10, "INSTANT_APP_START_FOREGROUND"

    const/16 v11, 0x44

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2927
    const-string v9, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x44

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:answer_phone_calls"

    const-string v10, "ANSWER_PHONE_CALLS"

    const/16 v11, 0x45

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2929
    const/16 v9, 0x45

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2930
    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2931
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x45

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:run_any_in_background"

    const-string v10, "RUN_ANY_IN_BACKGROUND"

    const/16 v11, 0x46

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2934
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x46

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:change_wifi_state"

    const-string v10, "CHANGE_WIFI_STATE"

    const/16 v11, 0x47

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2936
    const/16 v9, 0x47

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2937
    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2938
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x47

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:request_delete_packages"

    const-string v10, "REQUEST_DELETE_PACKAGES"

    const/16 v11, 0x48

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2941
    const-string v9, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2942
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x48

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:bind_accessibility_service"

    const-string v10, "BIND_ACCESSIBILITY_SERVICE"

    const/16 v11, 0x49

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2945
    const-string v9, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2946
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x49

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:accept_handover"

    const-string v10, "ACCEPT_HANDOVER"

    const/16 v11, 0x4a

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2948
    const/16 v9, 0x4a

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2949
    const-string v9, "android.permission.ACCEPT_HANDOVER"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2950
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:manage_ipsec_tunnels"

    const-string v10, "MANAGE_IPSEC_TUNNELS"

    const/16 v11, 0x4b

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2953
    const-string v9, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2954
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:start_foreground"

    const-string v10, "START_FOREGROUND"

    const/16 v11, 0x4c

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2956
    const-string v9, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2957
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:bluetooth_scan"

    const-string v10, "BLUETOOTH_SCAN"

    const/16 v11, 0x4d

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2959
    const-string v9, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v9, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2960
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2961
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_biometric"

    const-string v10, "USE_BIOMETRIC"

    const/16 v11, 0x4e

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2963
    const-string v9, "android.permission.USE_BIOMETRIC"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2964
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:activity_recognition"

    const-string v10, "ACTIVITY_RECOGNITION"

    const/16 v11, 0x4f

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2967
    const-string v9, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2968
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:sms_financial_transactions"

    const-string v10, "SMS_FINANCIAL_TRANSACTIONS"

    const/16 v11, 0x50

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2971
    const-string v9, "android.permission.SMS_FINANCIAL_TRANSACTIONS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2972
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x50

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_audio"

    const-string v9, "READ_MEDIA_AUDIO"

    const/16 v10, 0x51

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2974
    const-string v8, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2975
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x51

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_audio"

    const-string v9, "WRITE_MEDIA_AUDIO"

    const/16 v10, 0x52

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2977
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x52

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_video"

    const-string v9, "READ_MEDIA_VIDEO"

    const/16 v10, 0x53

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2979
    const-string v8, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2980
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x53

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_video"

    const-string v9, "WRITE_MEDIA_VIDEO"

    const/16 v10, 0x54

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2982
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x54

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_images"

    const-string v9, "READ_MEDIA_IMAGES"

    const/16 v10, 0x55

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2984
    const-string v8, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2985
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x55

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_images"

    const-string v9, "WRITE_MEDIA_IMAGES"

    const/16 v10, 0x56

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2987
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x56

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:legacy_storage"

    const-string v9, "LEGACY_STORAGE"

    const/16 v10, 0x57

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2989
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x57

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_accessibility"

    const-string v9, "ACCESS_ACCESSIBILITY"

    const/16 v10, 0x58

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2991
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x58

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_device_identifiers"

    const-string v9, "READ_DEVICE_IDENTIFIERS"

    const/16 v10, 0x59

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2993
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x59

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_media_location"

    const-string v9, "ACCESS_MEDIA_LOCATION"

    const/16 v10, 0x5a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2995
    const-string v8, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2996
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:query_all_packages"

    const-string v9, "QUERY_ALL_PACKAGES"

    const/16 v10, 0x5b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2998
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_external_storage"

    const-string v9, "MANAGE_EXTERNAL_STORAGE"

    const/16 v10, 0x5c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3001
    const-string v8, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:interact_across_profiles"

    const-string v9, "INTERACT_ACROSS_PROFILES"

    const/16 v10, 0x5d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3004
    const-string v8, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:activate_platform_vpn"

    const-string v9, "ACTIVATE_PLATFORM_VPN"

    const/16 v10, 0x5e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3006
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:loader_usage_stats"

    const-string v9, "LOADER_USAGE_STATS"

    const/16 v10, 0x5f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3008
    const-string v8, "android.permission.LOADER_USAGE_STATS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v2, v6, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3009
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x60

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:auto_revoke_permissions_if_unused"

    const-string v9, "AUTO_REVOKE_PERMISSIONS_IF_UNUSED"

    const/16 v10, 0x61

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3012
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x61

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:auto_revoke_managed_by_installer"

    const-string v9, "AUTO_REVOKE_MANAGED_BY_INSTALLER"

    const/16 v10, 0x62

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x62

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:no_isolated_storage"

    const-string v9, "NO_ISOLATED_STORAGE"

    const/16 v10, 0x63

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3017
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3018
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x63

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:phone_call_microphone"

    const-string v9, "PHONE_CALL_MICROPHONE"

    const/16 v10, 0x64

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3020
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x64

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:phone_call_camera"

    const-string v9, "PHONE_CALL_CAMERA"

    const/16 v10, 0x65

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3022
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x65

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_hotword"

    const-string v9, "RECORD_AUDIO_HOTWORD"

    const/16 v10, 0x66

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3024
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x66

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_ongoing_calls"

    const-string v9, "MANAGE_ONGOING_CALLS"

    const/16 v10, 0x67

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3026
    const-string v8, "android.permission.MANAGE_ONGOING_CALLS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3027
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x67

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_credentials"

    const-string v9, "MANAGE_CREDENTIALS"

    const/16 v10, 0x68

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x68

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:use_icc_auth_with_device_identifier"

    const-string v9, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const/16 v10, 0x69

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3032
    const-string v8, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3033
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x69

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_output"

    const-string v9, "RECORD_AUDIO_OUTPUT"

    const/16 v10, 0x6a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:schedule_exact_alarm"

    const-string v9, "SCHEDULE_EXACT_ALARM"

    const/16 v10, 0x6b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-string v8, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3038
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:fine_location_source"

    const-string v9, "FINE_LOCATION_SOURCE"

    const/16 v10, 0x6c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3040
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3041
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:coarse_location_source"

    const-string v9, "COARSE_LOCATION_SOURCE"

    const/16 v10, 0x6d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3044
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_media"

    const-string v9, "MANAGE_MEDIA"

    const/16 v10, 0x6e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3046
    const-string v8, "android.permission.MANAGE_MEDIA"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:bluetooth_connect"

    const-string v9, "BLUETOOTH_CONNECT"

    const/16 v10, 0x6f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3048
    const-string v8, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3049
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:uwb_ranging"

    const-string v9, "UWB_RANGING"

    const/16 v10, 0x70

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3051
    const-string v8, "android.permission.UWB_RANGING"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3052
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x70

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:activity_recognition_source"

    const-string v9, "ACTIVITY_RECOGNITION_SOURCE"

    const/16 v10, 0x71

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3055
    const/16 v8, 0x4f

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3056
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x71

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:bluetooth_advertise"

    const-string v9, "BLUETOOTH_ADVERTISE"

    const/16 v10, 0x72

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3058
    const-string v8, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3059
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x72

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_incoming_phone_audio"

    const-string v9, "RECORD_INCOMING_PHONE_AUDIO"

    const/16 v10, 0x73

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x73

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:nearby_wifi_devices"

    const-string v9, "NEARBY_WIFI_DEVICES"

    const/16 v10, 0x74

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3063
    const-string v8, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3064
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x74

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:establish_vpn_service"

    const-string v9, "ESTABLISH_VPN_SERVICE"

    const/16 v10, 0x75

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3066
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x75

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:establish_vpn_manager"

    const-string v9, "ESTABLISH_VPN_MANAGER"

    const/16 v10, 0x76

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3068
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x76

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_restricted_settings"

    const-string v9, "ACCESS_RESTRICTED_SETTINGS"

    const/16 v10, 0x77

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3070
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3071
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestrictRead(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x77

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_ambient_trigger_audio"

    const-string v9, "RECEIVE_SOUNDTRIGGER_AUDIO"

    const/16 v10, 0x78

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3074
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setForceCollectNotes(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x78

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_explicit_user_interaction_audio"

    const-string v9, "RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO"

    const/16 v10, 0x79

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3078
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x79

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:run_user_initiated_jobs"

    const-string v9, "RUN_USER_INITIATED_JOBS"

    const/16 v10, 0x7a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3080
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3081
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_visual_user_selected"

    const-string v9, "READ_MEDIA_VISUAL_USER_SELECTED"

    const/16 v10, 0x7b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3084
    const-string v8, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3085
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_suspension"

    const-string v9, "SYSTEM_EXEMPT_FROM_SUSPENSION"

    const/16 v10, 0x7c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3089
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_dismissible_notifications"

    const-string v9, "SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS"

    const/16 v10, 0x7d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3093
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_write_health_data"

    const-string v9, "READ_WRITE_HEALTH_DATA"

    const/16 v10, 0x7e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:foreground_service_special_use"

    const-string v9, "FOREGROUND_SERVICE_SPECIAL_USE"

    const/16 v10, 0x7f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3098
    const-string v8, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_power_restrictions"

    const-string v9, "SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS"

    const/16 v10, 0x80

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3102
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x80

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_hibernation"

    const-string v9, "SYSTEM_EXEMPT_FROM_HIBERNATION"

    const/16 v10, 0x81

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3106
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x81

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_activity_bg_start_restriction"

    const-string v9, "SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION"

    const/16 v10, 0x82

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3110
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x82

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:capture_consentless_bugreport_on_userdebug_build"

    const-string v9, "CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    const/16 v10, 0x83

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3115
    const-string v8, "android.permission.CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3116
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x83

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_2"

    const-string v9, "DEPRECATED_2"

    const/16 v10, 0x84

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3118
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x84

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:use_full_screen_intent"

    const-string v9, "USE_FULL_SCREEN_INTENT"

    const/16 v10, 0x85

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3120
    const-string v8, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3121
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x85

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:camera_sandboxed"

    const-string v9, "CAMERA_SANDBOXED"

    const/16 v10, 0x86

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3123
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x86

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_sandboxed"

    const-string v9, "RECORD_AUDIO_SANDBOXED"

    const/16 v10, 0x87

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x87

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_sandbox_trigger_audio"

    const-string v9, "RECEIVE_SANDBOX_TRIGGER_AUDIO"

    const/16 v10, 0x88

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3129
    const-string v8, "android.permission.RECEIVE_SANDBOX_TRIGGER_AUDIO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3130
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x88

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_3"

    const-string v9, "DEPRECATED_3"

    const/16 v10, 0x89

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3132
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x89

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:create_accessibility_overlay"

    const-string v9, "CREATE_ACCESSIBILITY_OVERLAY"

    const/16 v10, 0x8a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:media_routing_control"

    const-string v9, "MEDIA_ROUTING_CONTROL"

    const/16 v10, 0x8b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3139
    const-string v8, "android.permission.MEDIA_ROUTING_CONTROL"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:enable_mobile_data_by_user"

    const-string v9, "ENABLE_MOBILE_DATA_BY_USER"

    const/16 v10, 0x8c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3141
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:reserved_for_testing"

    const-string v9, "OP_RESERVED_FOR_TESTING"

    const/16 v10, 0x8d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:rapid_clear_notifications_by_listener"

    const-string v9, "RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER"

    const/16 v10, 0x8e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_system_grammatical_gender"

    const-string v9, "READ_SYSTEM_GRAMMATICAL_GENDER"

    const/16 v10, 0x8f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3152
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_4"

    const-string v9, "DEPRECATED_4"

    const/16 v10, 0x90

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3154
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x90

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:archive_icon_overlay"

    const-string v9, "ARCHIVE_ICON_OVERLAY"

    const/16 v10, 0x91

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x91

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:unarchival_support"

    const-string v9, "UNARCHIVAL_CONFIRMATION"

    const/16 v10, 0x92

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x92

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:emergency_location"

    const-string v9, "EMERGENCY_LOCATION"

    const/16 v10, 0x93

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3162
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3165
    const-string v8, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x93

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_sensitive_notifications"

    const-string v9, "RECEIVE_SENSITIVE_NOTIFICATIONS"

    const/16 v10, 0x94

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3168
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x94

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_heart_rate"

    const-string v9, "READ_HEART_RATE"

    invoke-direct {v2, v4, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3170
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3171
    const-string v8, "android.permission.health.READ_HEART_RATE"

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 3170
    :goto_4
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3172
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v4

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v4, "android:read_skin_temperature"

    const-string v8, "READ_SKIN_TEMPERATURE"

    invoke-direct {v2, v0, v4, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3175
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3176
    const-string v4, "android.permission.health.READ_SKIN_TEMPERATURE"

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 3174
    :goto_5
    invoke-virtual {v2, v4}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3177
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v0

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:ranging"

    const-string v4, "RANGING"

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3179
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->rangingPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3180
    const-string v2, "android.permission.RANGING"

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 3179
    :goto_6
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3181
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    aput-object v0, v7, v5

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:read_oxygen_saturation"

    const-string v4, "READ_OXYGEN_SATURATION"

    const/16 v11, 0x98

    invoke-direct {v0, v11, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3184
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3185
    const-string v2, "android.permission.health.READ_OXYGEN_SATURATION"

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    .line 3183
    :goto_7
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3186
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v11, 0x98

    aput-object v0, v7, v11

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:write_system_preferences"

    const-string v4, "WRITE_SYSTEM_PREFERENCES"

    const/16 v5, 0x99

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3189
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->writeSystemPreferencePermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3190
    const-string v2, "android.permission.WRITE_SYSTEM_PREFERENCES"

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    .line 3188
    :goto_8
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3190
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:control_audio"

    const-string v4, "CONTROL_AUDIO"

    const/16 v5, 0x9a

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3192
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:control_audio_partial"

    const-string v4, "CONTROL_AUDIO_PARTIAL"

    const/16 v5, 0x9b

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3194
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v7, v2

    sput-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    .line 3211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 3216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 3225
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    .line 3235
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 3238
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ne v0, v3, :cond_12

    .line 3242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v3, :cond_a

    .line 3243
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 3244
    sget-object v2, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v4, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3242
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3247
    .end local v0    # "i":I
    :cond_a
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_d

    aget v4, v0, v3

    .line 3248
    .local v4, "op":I
    if-ne v4, v6, :cond_b

    .line 3250
    goto :goto_b

    .line 3252
    :cond_b
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 3253
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3247
    .end local v4    # "op":I
    :cond_c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3256
    :cond_d
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_f

    aget v4, v0, v3

    .line 3257
    .restart local v4    # "op":I
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 3258
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    .end local v4    # "op":I
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3261
    :cond_f
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_d
    if-ge v3, v2, :cond_11

    aget v4, v0, v3

    .line 3262
    .restart local v4    # "op":I
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 3263
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3261
    .end local v4    # "op":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3269
    :cond_11
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    sput-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 8021
    new-instance v0, Landroid/app/AppOpsManager$2;

    invoke-direct {v0}, Landroid/app/AppOpsManager$2;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 8043
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "appOpModeCache"

    sget-object v7, Landroid/app/AppOpsManager;->sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v3, 0x800

    const-string/jumbo v4, "system_server"

    const-string v5, "getAppOpMode"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v2, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    .line 8051
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    .line 8053
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8054
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8055
    return-void

    .line 3239
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAppOpInfos length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x18
        0x17
        0x2b
        0x42
        0x4c
        0x50
        0x4b
        0x44
        0x5f
    .end array-data

    :array_2
    .array-data 4
        0x5c
        0x5d
        0x67
        0x69
        0x6b
        0x6e
        0x3d
        0x7a
        0x7f
        0x83
        0x85
        0x88
        0x8b
        0x8f
        0x99
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .line 8127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 251
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 255
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 8128
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8129
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 8131
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 8132
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 8134
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8138
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8136
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 8140
    const-string/jumbo v1, "privacy"

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8142
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;-><init>()V

    .line 8140
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8148
    return-void

    .line 8153
    :cond_0
    goto :goto_0

    .line 8150
    :catch_0
    move-exception v1

    .line 8155
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 8156
    return-void
.end method

.method private batchDuplicateNoteOps(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .locals 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "collectAsync"    # Z
    .param p8, "shouldCollectMessage"    # Z

    .line 9462
    sget-object v1, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9463
    :try_start_0
    new-instance v2, Landroid/app/AppOpsManager$NotedOp;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/app/AppOpsManager$NotedOp;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 9471
    .local v2, "notedOp":Landroid/app/AppOpsManager$NotedOp;
    sget-object v0, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 9472
    .local v0, "isDuplicated":Z
    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 9473
    sget-object v4, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9475
    :cond_0
    sget-object v4, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v4, v2, v5, v6}, Landroid/util/ArrayMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 9478
    :goto_0
    sget-boolean v4, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    if-nez v4, :cond_2

    .line 9479
    sget-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v4, :cond_1

    .line 9480
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AppOpsManagerNoteOpBatching"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 9481
    sget-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 9484
    :cond_1
    sget-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/AppOpsManager;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9505
    sput-boolean v3, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 9507
    :cond_2
    monitor-exit v1

    return v0

    .line 9508
    .end local v0    # "isDuplicated":Z
    .end local v2    # "notedOp":Landroid/app/AppOpsManager$NotedOp;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 14
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I

    .line 9835
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->isAppOpModeCachingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9836
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string v7, "checkOpNoThrow"

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9839
    .local v0, "mode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 9842
    iget-object v8, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 9846
    .end local v0    # "mode":I
    :cond_0
    iget-object v8, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9849
    .restart local v0    # "mode":I
    :cond_1
    :goto_0
    return v0

    .line 9850
    .end local v0    # "mode":I
    :catch_0
    move-exception v0

    .line 9851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 14
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I

    .line 9276
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->isAppOpModeCachingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9277
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string/jumbo v7, "unsafeCheckOpRawNoThrow"

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "mode":I
    goto :goto_0

    .line 9281
    .end local v0    # "mode":I
    :cond_0
    iget-object v8, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9284
    .restart local v0    # "mode":I
    :goto_0
    return v0

    .line 9285
    .end local v0    # "mode":I
    :catch_0
    move-exception v0

    .line 9286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 5
    .param p0, "array"    # Landroid/util/LongSparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11434
    .local p1, "result":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 11435
    if-nez p1, :cond_0

    .line 11436
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object p1, v0

    .line 11438
    :cond_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 11439
    .local v0, "accessSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11440
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 11439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11443
    .end local v0    # "accessSize":I
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method private collectNoteOpCallsForValidation(I)V
    .locals 0
    .param p1, "op"    # I

    .line 11555
    return-void
.end method

.method private collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V
    .locals 2
    .param p1, "syncOp"    # Landroid/app/SyncNotedAppOp;

    .line 10554
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10555
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v1, :cond_0

    .line 10556
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v1, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10558
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10559
    sget-object v0, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10560
    return-void

    .line 10558
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V
    .locals 5
    .param p0, "syncOp"    # Landroid/app/SyncNotedAppOp;

    .line 10576
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10577
    .local v0, "op":I
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 10578
    .local v1, "appOpsNoted":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    if-nez v1, :cond_0

    .line 10579
    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v1, v2

    .line 10580
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10583
    :cond_0
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    .line 10584
    .local v2, "appOpsNotedForAttribution":Ljava/util/BitSet;
    if-nez v2, :cond_1

    .line 10585
    new-instance v3, Ljava/util/BitSet;

    const/16 v4, 0x9c

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v2, v3

    .line 10586
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10589
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 10590
    return-void
.end method

.method private static deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 11558
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 11559
    .local v0, "n":I
    const/4 v1, 0x0

    .line 11560
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11561
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v6

    .line 11562
    .local v6, "currentAccessTime":J
    add-int/lit8 v3, v2, 0x1

    .line 11563
    :goto_1
    if-ge v3, v0, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_0

    .line 11564
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11566
    :cond_0
    invoke-interface {p0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11560
    .end local v6    # "currentAccessTime":J
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 11568
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_1
    :goto_2
    if-ge v1, v0, :cond_2

    .line 11569
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11568
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11571
    :cond_2
    return-object p0
.end method

.method public static disableAppOpModeCache()V
    .locals 1

    .line 8079
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8080
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableLocal()V

    .line 8082
    :cond_0
    return-void
.end method

.method private static equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .locals 8
    .param p0, "a"    # Landroid/util/LongSparseLongArray;
    .param p1, "b"    # Landroid/util/LongSparseLongArray;

    .line 11363
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 11364
    return v0

    .line 11367
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 11371
    :cond_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 11372
    return v1

    .line 11375
    :cond_2
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    .line 11376
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 11377
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    goto :goto_1

    .line 11376
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11378
    :cond_4
    :goto_1
    return v1

    .line 11382
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 11368
    .end local v2    # "numEntries":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static extractFlagsFromKey(J)I
    .locals 2
    .param p0, "key"    # J

    .line 907
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static extractUidStateFromKey(J)I
    .locals 2
    .param p0, "key"    # J

    .line 902
    const/16 v0, 0x1f

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static finishNotedAppOpsCollection()V
    .locals 1

    .line 10543
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10544
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10545
    return-void
.end method

.method private finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "virtualDeviceId"    # I

    .line 10353
    if-nez p6, :cond_0

    .line 10354
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, p6

    goto :goto_0

    .line 10359
    :catch_0
    move-exception v0

    move-object p1, v0

    move v7, p6

    goto :goto_1

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "op":I
    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "attributionTag":Ljava/lang/String;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "op":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object p1, v0

    move v7, p6

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "op":I
    .restart local v3    # "uid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "attributionTag":Ljava/lang/String;
    goto :goto_1

    .line 10356
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "op":I
    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "attributionTag":Ljava/lang/String;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "op":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "op":I
    .restart local v3    # "uid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "attributionTag":Ljava/lang/String;
    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    .end local v1    # "token":Landroid/os/IBinder;
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move v7, p6

    .end local p6    # "virtualDeviceId":I
    .local v7, "virtualDeviceId":I
    :try_start_3
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IAppOpsService;->finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 10361
    .end local v6    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    :goto_0
    nop

    .line 10362
    return-void

    .line 10359
    .end local v1    # "token":Landroid/os/IBinder;
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .restart local v6    # "attributionTag":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object p1, v0

    .end local v6    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v7    # "virtualDeviceId":I
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .restart local v6    # "attributionTag":Ljava/lang/String;
    .restart local p6    # "virtualDeviceId":I
    :catch_3
    move-exception v0

    move v7, p6

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object p1, v0

    .line 10360
    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local p6    # "virtualDeviceId":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .restart local v7    # "virtualDeviceId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v0, "flagsBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p0, :cond_1

    .line 914
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 915
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p0, v2

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 917
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_0
    invoke-static {v1}, Landroid/app/AppOpsManager;->getFlagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .end local v1    # "flag":I
    goto :goto_0

    .line 921
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClientId()Landroid/os/IBinder;
    .locals 2

    .line 9913
    const-class v0, Landroid/app/AppOpsManager;

    monitor-enter v0

    .line 9914
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 9915
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    .line 9918
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 9919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getComponentPackageNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "from"    # Ljava/lang/String;

    .line 9743
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9744
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    return-object v1
.end method

.method public static final getFlagName(I)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I

    .line 752
    sparse-switch p0, :sswitch_data_0

    .line 764
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 762
    :sswitch_0
    const-string/jumbo v0, "upd"

    return-object v0

    .line 760
    :sswitch_1
    const-string/jumbo v0, "tpd"

    return-object v0

    .line 758
    :sswitch_2
    const-string/jumbo v0, "up"

    return-object v0

    .line 756
    :sswitch_3
    const-string/jumbo v0, "tp"

    return-object v0

    .line 754
    :sswitch_4
    const-string/jumbo v0, "s"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getFormattedStackTrace()Ljava/lang/String;
    .locals 8

    .line 11081
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 11083
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 11084
    .local v1, "firstInteresting":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 11085
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 11086
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 11087
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$Stub$Proxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 11088
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/database/DatabaseUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 11089
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.content.ContentProviderProxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 11090
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/content/ContentResolver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11091
    :cond_0
    move v1, v2

    .line 11084
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11097
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 11098
    .local v2, "lastInteresting":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 11099
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11100
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11101
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Looper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11102
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Binder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11103
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/RuntimeInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11104
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11105
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/ActivityThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11106
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    .line 11107
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.server.SystemServer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11108
    :cond_2
    move v2, v3

    .line 11098
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 11114
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11115
    .local v3, "sb":Ljava/lang/StringBuilder;
    move v4, v1

    .local v4, "i":I
    :goto_2
    if-gt v4, v2, :cond_7

    .line 11116
    sget-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    .line 11118
    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "privacy"

    const-string/jumbo v7, "privacy_attribution_tag_full_log_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11123
    goto :goto_3

    .line 11120
    :catch_0
    move-exception v6

    .line 11122
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 11126
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    if-eq v4, v1, :cond_5

    .line 11127
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11129
    :cond_5
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11130
    .local v5, "traceString":Ljava/lang/String;
    sget-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x258

    if-le v6, v7, :cond_6

    .line 11131
    goto :goto_4

    .line 11133
    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11115
    .end local v5    # "traceString":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11136
    .end local v4    # "i":I
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .locals 17
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;III)",
            "Landroid/app/AppOpsManager$NoteOpEvent;"
        }
    .end annotation

    .line 11331
    .local p0, "events":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    move-object/from16 v0, p0

    if-nez v0, :cond_0

    .line 11332
    const/4 v1, 0x0

    return-object v1

    .line 11335
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p3

    .line 11336
    .end local p3    # "flags":I
    .local v1, "flags":I
    .local v2, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :goto_0
    if-eqz v1, :cond_7

    .line 11337
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 11338
    .local v3, "flag":I
    not-int v4, v3

    and-int/2addr v1, v4

    .line 11339
    sget-object v4, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget v7, v4, v6

    .line 11340
    .local v7, "uidState":I
    move/from16 v8, p1

    if-lt v7, v8, :cond_4

    move/from16 v9, p2

    if-le v7, v9, :cond_1

    .line 11341
    goto :goto_2

    .line 11343
    :cond_1
    invoke-static {v7, v3}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v10

    .line 11345
    .local v10, "key":J
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 11346
    .local v12, "event":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v12, :cond_2

    .line 11347
    goto :goto_2

    .line 11350
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_3

    .line 11351
    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    .line 11352
    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 11353
    :cond_3
    move-object v2, v12

    goto :goto_2

    .line 11340
    .end local v10    # "key":J
    .end local v12    # "event":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_4
    move/from16 v9, p2

    .line 11339
    .end local v7    # "uidState":I
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move/from16 v8, p1

    move/from16 v9, p2

    .line 11356
    .end local v3    # "flag":I
    goto :goto_0

    .line 11358
    :cond_7
    move/from16 v8, p1

    move/from16 v9, p2

    return-object v2
.end method

.method private getNotedOpCollectionMode(ILjava/lang/String;I)I
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I

    .line 10651
    if-nez p2, :cond_0

    .line 10652
    const-string p2, "android"

    .line 10656
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v0, v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 10659
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p3}, Lcom/android/internal/app/IAppOpsService;->shouldCollectNotes(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10662
    .local v0, "shouldCollectNotes":Z
    nop

    .line 10664
    if-eqz v0, :cond_1

    .line 10665
    sget-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aput-byte v3, v4, p3

    goto :goto_0

    .line 10667
    :cond_1
    sget-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aput-byte v1, v4, p3

    goto :goto_0

    .line 10660
    .end local v0    # "shouldCollectNotes":Z
    :catch_0
    move-exception v0

    .line 10661
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 10671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v0, v0, p3

    if-eq v0, v3, :cond_3

    .line 10672
    return v2

    .line 10675
    :cond_3
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10676
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 10677
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10678
    monitor-exit v0

    return v1

    .line 10680
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10682
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10684
    .local v0, "binderUid":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 10685
    return v3

    .line 10687
    :cond_5
    const/4 v1, 0x3

    return v1

    .line 10680
    .end local v0    # "binderUid":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getNumOps()I
    .locals 1

    .line 11315
    const/16 v0, 0x9c

    return v0
.end method

.method public static getOpStrs()[Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11302
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 11303
    .local v0, "opStrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 11304
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 11303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11306
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getService()Lcom/android/internal/app/IAppOpsService;
    .locals 2

    .line 9924
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9925
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_0

    .line 9926
    const-string v1, "appops"

    .line 9927
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 9926
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    .line 9929
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    monitor-exit v0

    return-object v1

    .line 9930
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSystemAlertWindowDefault()I
    .locals 5

    .line 11510
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 11511
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 11512
    return v1

    .line 11516
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 11517
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 11518
    return v1

    .line 11521
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11522
    const-string v3, "android.software.leanback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11523
    const/4 v1, 0x1

    return v1

    .line 11526
    :cond_2
    return v1
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9908
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getUidStateName(I)Ljava/lang/String;
    .locals 1
    .param p0, "uidState"    # I

    .line 639
    sparse-switch p0, :sswitch_data_0

    .line 657
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 655
    :sswitch_0
    const-string/jumbo v0, "gone"

    return-object v0

    .line 653
    :sswitch_1
    const-string v0, "cch"

    return-object v0

    .line 651
    :sswitch_2
    const-string v0, "bg"

    return-object v0

    .line 649
    :sswitch_3
    const-string v0, "fg"

    return-object v0

    .line 647
    :sswitch_4
    const-string v0, "fgsvc"

    return-object v0

    .line 645
    :sswitch_5
    const-string v0, "fgsvcl"

    return-object v0

    .line 643
    :sswitch_6
    const-string/jumbo v0, "top"

    return-object v0

    .line 641
    :sswitch_7
    const-string/jumbo v0, "pers"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_5
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_2
        0x2bc -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static historicalModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 11493
    packed-switch p0, :pswitch_data_0

    .line 11504
    const-string v0, "UNKNOWN"

    return-object v0

    .line 11501
    :pswitch_0
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    return-object v0

    .line 11498
    :pswitch_1
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    return-object v0

    .line 11495
    :pswitch_2
    const-string v0, "HISTORICAL_MODE_DISABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static invalidateAppOpModeCache()V
    .locals 2

    .line 8068
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8069
    const-string/jumbo v0, "system_server"

    const-string v1, "getAppOpMode"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 8071
    :cond_0
    return-void
.end method

.method private static isAppOpModeCachingEnabled(I)Z
    .locals 2
    .param p0, "opCode"    # I

    .line 8058
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8059
    return v1

    .line 8061
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isCollectingStackTraces()Z
    .locals 4

    .line 10948
    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 10949
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 10950
    const/4 v0, 0x0

    return v0

    .line 10952
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isListeningForOpNoted()Z
    .locals 1

    .line 10937
    sget-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

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

.method private isNoteOpBatchingSupported()Z
    .locals 2

    .line 272
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 273
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->noteOpBatchingEnabled()Z

    move-result v0

    return v0
.end method

.method private static isPackagePreInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 9749
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9750
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 9751
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 9752
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v0, v4

    :cond_0
    return v0

    .line 9753
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 9754
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static keyToString(J)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # J

    .line 890
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    .line 891
    .local v0, "uidState":I
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v1

    .line 892
    .local v1, "flags":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private synthetic lambda$batchDuplicateNoteOps$5()V
    .locals 3

    .line 9486
    sget-object v0, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9487
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 9488
    sget-object v1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 9489
    .local v1, "pendingNotedOpsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/AppOpsManager$NotedOp;Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 9490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9491
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9492
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 9493
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9491
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9496
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9498
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->noteOperationsInBatch(Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9501
    goto :goto_1

    .line 9499
    :catch_0
    move-exception v0

    .line 9500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 9503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void

    .line 9490
    .end local v1    # "pendingNotedOpsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/AppOpsManager$NotedOp;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic lambda$getHistoricalOps$1(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 8344
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getHistoricalOps$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 8341
    const-string/jumbo v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 8342
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8344
    .local v1, "identity":J
    :try_start_0
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8346
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8347
    nop

    .line 8348
    return-void

    .line 8346
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8347
    throw v3
.end method

.method static synthetic lambda$getHistoricalOpsFromDiskRaw$3(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 8384
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getHistoricalOpsFromDiskRaw$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 8381
    const-string/jumbo v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 8382
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8384
    .local v1, "identity":J
    :try_start_0
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8386
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8387
    nop

    .line 8388
    return-void

    .line 8386
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8387
    throw v3
.end method

.method static synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 8144
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "privacy_attribution_tag_full_log_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8145
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 8147
    :cond_0
    return-void
.end method

.method static synthetic lambda$setOnOpNotedCallback$6(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .locals 0
    .param p0, "onOpNotedCallback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p1, "asyncNotedAppOp"    # Landroid/app/AsyncNotedAppOp;

    .line 10890
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method static synthetic lambda$setOnOpNotedCallback$7(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .locals 0
    .param p0, "onOpNotedCallback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p1, "syncNotedAppOp"    # Landroid/app/AsyncNotedAppOp;

    .line 10898
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method public static leftCircularDistance(III)I
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "size"    # I

    .line 11534
    add-int v0, p1, p2

    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    return v0
.end method

.method private static listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .locals 8
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7657
    .local p0, "accesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7658
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez p0, :cond_0

    .line 7659
    return-object v0

    .line 7661
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 7662
    .local v1, "nAccesses":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7663
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7664
    .local v3, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v3, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 7665
    goto :goto_1

    .line 7667
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7662
    .end local v3    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7669
    .end local v2    # "i":I
    :cond_2
    invoke-static {v0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static makeKey(II)J
    .locals 4
    .param p0, "uidState"    # I
    .param p1, "flags"    # I

    .line 897
    int-to-long v0, p0

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Landroid/app/AppOpsManager$AttributedOpEntry;"
        }
    .end annotation

    .line 11575
    .local p0, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 11576
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v1

    .line 11578
    :cond_0
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 11579
    .local v1, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 11580
    .local v2, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 11581
    .local v4, "opCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_7

    .line 11582
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 11583
    .local v6, "a":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v7

    .line 11584
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 11585
    .local v8, "keyCount":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v8, :cond_6

    .line 11586
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 11588
    .local v10, "key":J
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 11589
    .local v12, "uidState":I
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    .line 11591
    .local v13, "flags":I
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v14

    .line 11592
    .local v14, "access":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v15

    .line 11594
    .local v15, "reject":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v14, :cond_4

    .line 11595
    invoke-virtual {v1, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 11596
    .local v3, "existingAccess":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v16, v17, v19

    if-eqz v16, :cond_3

    .line 11597
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    invoke-virtual {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v19

    cmp-long v16, v17, v19

    if-gez v16, :cond_1

    move/from16 v16, v4

    goto :goto_2

    .line 11599
    :cond_1
    invoke-static {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-nez v16, :cond_2

    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 11600
    move/from16 v16, v4

    .end local v4    # "opCount":I
    .local v16, "opCount":I
    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_3

    .line 11599
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_2
    move/from16 v16, v4

    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    goto :goto_3

    .line 11596
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_3
    move/from16 v16, v4

    .line 11598
    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    :goto_2
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_3

    .line 11594
    .end local v3    # "existingAccess":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_4
    move/from16 v16, v4

    .line 11603
    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    :goto_3
    if-eqz v15, :cond_5

    .line 11604
    invoke-virtual {v2, v10, v11, v15}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 11585
    .end local v10    # "key":J
    .end local v12    # "uidState":I
    .end local v13    # "flags":I
    .end local v14    # "access":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v15    # "reject":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_1

    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_6
    move/from16 v16, v4

    .line 11581
    .end local v4    # "opCount":I
    .end local v6    # "a":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v8    # "keyCount":I
    .end local v9    # "k":I
    .restart local v16    # "opCount":I
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_7
    move/from16 v16, v4

    .line 11608
    .end local v4    # "opCount":I
    .end local v5    # "i":I
    .restart local v16    # "opCount":I
    new-instance v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-static {v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I

    move-result v5

    invoke-direct {v3, v5, v4, v1, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v3
.end method

.method public static modeToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 3402
    if-ltz p0, :cond_0

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 3403
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 3405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 16
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "message"    # Ljava/lang/String;

    .line 9514
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 9515
    move/from16 v4, p2

    invoke-direct {v1, v4, v3, v2}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 9516
    .local v10, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_a

    const/16 v5, 0x3e8

    const/4 v12, 0x1

    if-ne v0, v5, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9517
    .local v0, "shouldCollectMessage":Z
    :goto_0
    const/4 v13, 0x3

    if-ne v10, v13, :cond_1

    .line 9518
    if-nez p6, :cond_1

    .line 9520
    :try_start_1
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9521
    .end local p6    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    const/4 v0, 0x1

    move-object v9, v5

    goto :goto_1

    .line 9562
    .end local v0    # "shouldCollectMessage":Z
    .end local v5    # "message":Ljava/lang/String;
    .end local v10    # "collectionMode":I
    .restart local p6    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v7, p6

    move-object v9, v1

    goto/16 :goto_a

    .line 9525
    .restart local v0    # "shouldCollectMessage":Z
    .restart local v10    # "collectionMode":I
    :cond_1
    move-object/from16 v9, p6

    .end local p6    # "message":Ljava/lang/String;
    .local v9, "message":Ljava/lang/String;
    :goto_1
    const/4 v14, 0x0

    .line 9526
    .local v14, "syncOp":Landroid/app/SyncNotedAppOp;
    const/4 v15, 0x0

    .line 9527
    .local v15, "isNoteOpDuplicated":Z
    :try_start_2
    invoke-direct {v1}, Landroid/app/AppOpsManager;->isNoteOpBatchingSupported()Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    if-eqz v5, :cond_4

    .line 9528
    :try_start_3
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    new-instance v2, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string/jumbo v8, "noteOpNoThrow"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v7, p4

    move/from16 v6, p5

    move-object v11, v5

    move-object v5, v3

    move/from16 v3, p1

    :try_start_5
    invoke-direct/range {v2 .. v8}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v11, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    move v11, v2

    .line 9533
    .local v11, "mode":I
    const/4 v2, 0x4

    if-eq v11, v2, :cond_3

    .line 9534
    if-ne v10, v13, :cond_2

    move v8, v12

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v9

    move v9, v0

    .end local v0    # "shouldCollectMessage":Z
    .local v7, "message":Ljava/lang/String;
    .local v9, "shouldCollectMessage":Z
    :try_start_7
    invoke-direct/range {v1 .. v9}, Landroid/app/AppOpsManager;->batchDuplicateNoteOps(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v4

    move v8, v9

    move-object v9, v1

    move v1, v2

    .end local v9    # "shouldCollectMessage":Z
    .local v8, "shouldCollectMessage":Z
    move v15, v0

    .line 9538
    :try_start_8
    new-instance v0, Landroid/app/SyncNotedAppOp;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v4, p4

    :try_start_9
    invoke-direct {v0, v11, v1, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v0

    goto :goto_4

    .line 9562
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v11    # "mode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    :catch_1
    move-exception v0

    move-object/from16 v4, p4

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v9, v1

    move v1, v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_a

    .line 9533
    .end local v7    # "message":Ljava/lang/String;
    .restart local v0    # "shouldCollectMessage":Z
    .local v9, "message":Ljava/lang/String;
    .restart local v10    # "collectionMode":I
    .restart local v11    # "mode":I
    .restart local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v15    # "isNoteOpDuplicated":Z
    :cond_3
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v8, v0

    move-object v7, v9

    move-object v9, v1

    move/from16 v1, p1

    .end local v0    # "shouldCollectMessage":Z
    .end local v9    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "shouldCollectMessage":Z
    goto :goto_4

    .line 9562
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v11    # "mode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    .restart local v9    # "message":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v7

    move-object v7, v9

    move-object v9, v1

    move v1, v3

    move-object v3, v5

    goto/16 :goto_9

    :catch_5
    move-exception v0

    :goto_3
    move-object/from16 v4, p4

    move-object v7, v9

    move-object v9, v1

    move/from16 v1, p1

    goto/16 :goto_9

    :catch_6
    move-exception v0

    move-object/from16 v4, p4

    move-object v7, v9

    move-object v9, v1

    move v1, v2

    goto/16 :goto_9

    .line 9527
    .restart local v0    # "shouldCollectMessage":Z
    .restart local v10    # "collectionMode":I
    .restart local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v15    # "isNoteOpDuplicated":Z
    :cond_4
    move-object/from16 v4, p4

    move v8, v0

    move-object v7, v9

    move-object v9, v1

    move v1, v2

    .line 9542
    .end local v0    # "shouldCollectMessage":Z
    .end local v9    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "shouldCollectMessage":Z
    :goto_4
    if-nez v15, :cond_8

    .line 9543
    if-nez p5, :cond_6

    .line 9544
    iget-object v0, v9, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    if-ne v10, v13, :cond_5

    move v5, v12

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    move/from16 v2, p2

    move-object v6, v7

    move v7, v8

    .end local v8    # "shouldCollectMessage":Z
    .local v6, "message":Ljava/lang/String;
    .local v7, "shouldCollectMessage":Z
    :try_start_a
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    move-object v7, v6

    .end local v6    # "message":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    .restart local v8    # "shouldCollectMessage":Z
    move-object v14, v0

    goto :goto_7

    .line 9562
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    .restart local v6    # "message":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v7, v6

    .end local v6    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_a

    .line 9547
    .restart local v8    # "shouldCollectMessage":Z
    .restart local v10    # "collectionMode":I
    .restart local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v15    # "isNoteOpDuplicated":Z
    :cond_6
    :try_start_b
    iget-object v0, v9, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v10, v13, :cond_7

    move v6, v12

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/app/IAppOpsService;->noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    move-object v14, v0

    .line 9553
    :cond_8
    :goto_7
    invoke-virtual {v14}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    if-nez v0, :cond_a

    .line 9554
    if-ne v10, v12, :cond_9

    .line 9555
    invoke-direct {v9, v14}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_8

    .line 9556
    :cond_9
    const/4 v0, 0x2

    if-ne v10, v0, :cond_a

    .line 9557
    invoke-static {v14}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9561
    :cond_a
    :goto_8
    invoke-virtual {v14}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    return v0

    .line 9562
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    :catch_8
    move-exception v0

    goto :goto_a

    .end local v7    # "message":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object v7, v9

    move-object v9, v1

    .end local v9    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    :goto_9
    goto :goto_a

    .end local v7    # "message":Ljava/lang/String;
    .restart local p6    # "message":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object v9, v1

    move-object/from16 v7, p6

    .line 9563
    .end local p6    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "message":Ljava/lang/String;
    :goto_a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .locals 1
    .param p0, "op"    # I

    .line 3372
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    return-object v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 3421
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Landroid/app/AppOpInfo;->disableReset:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static opIsPackageAppOpPermission(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 3429
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public static opIsUidAppOpPermission(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 3437
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public static opRestrictsRead(I)Z
    .locals 1
    .param p0, "op"    # I

    .line 3413
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Landroid/app/AppOpInfo;->restrictRead:Z

    return v0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .line 3380
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget v0, v0, Landroid/app/AppOpInfo;->defaultMode:I

    return v0
.end method

.method public static opToDefaultMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "appOp"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3394
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .line 3290
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    return-object v0

    .line 3291
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 3322
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public static opToPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3335
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static opToPublicName(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 3300
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .line 3343
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->restriction:Ljava/lang/String;

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .line 3281
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget v0, v0, Landroid/app/AppOpInfo;->switchCode:I

    return v0
.end method

.method public static parseHistoricalMode(Ljava/lang/String;)I
    .locals 3
    .param p0, "mode"    # Ljava/lang/String;

    .line 11478
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 11486
    return v1

    .line 11483
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 11480
    :pswitch_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0x93ff10b -> :sswitch_1
        0x34c83da2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    .locals 4

    .line 10501
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10502
    .local v0, "previousUid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 10503
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 10504
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 10506
    .local v1, "previousCollectedNotedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    sget-object v2, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 10507
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 10509
    new-instance v2, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;-><init>(ILandroid/util/ArrayMap;)V

    return-object v2

    .line 10512
    .end local v1    # "previousCollectedNotedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 8556
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8557
    .local v0, "opCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 8558
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v1

    .line 8560
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8562
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    const/16 v2, 0x7e

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v1

    .line 8564
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 3355
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3356
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 3357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 3359
    :cond_0
    if-eqz p0, :cond_1

    .line 3360
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 3359
    invoke-static {v1, p0}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3361
    const/16 v1, 0x7e

    return v1

    .line 3363
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V
    .locals 8
    .param p0, "p"    # Landroid/os/Parcel;

    .line 10703
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 10704
    .local v0, "notedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    if-nez v0, :cond_0

    .line 10705
    return-void

    .line 10708
    :cond_0
    const/16 v1, -0x7f

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10709
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 10711
    .local v1, "sizePosition":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10713
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 10714
    .local v2, "numAttributionWithNotesAppOps":I
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10716
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 10717
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10719
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v4

    .line 10720
    .local v4, "notedOpsMask":[J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 10721
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 10722
    aget-wide v6, v4, v5

    invoke-virtual {p0, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .line 10724
    :cond_1
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 10720
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10716
    .end local v4    # "notedOpsMask":[J
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10729
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 10730
    .local v3, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10732
    sub-int v4, v3, v1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10733
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10734
    return-void
.end method

.method public static readAndLogNotedAppops(Landroid/os/Parcel;)V
    .locals 14
    .param p0, "p"    # Landroid/os/Parcel;

    .line 10748
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 10749
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10751
    .local v1, "numAttributionsWithNotedAppOps":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 10752
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 10753
    .local v6, "attributionTag":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v10, v0, [J

    .line 10754
    .local v10, "rawNotedAppOps":[J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v3, v10

    if-ge v0, v3, :cond_0

    .line 10755
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v10, v0

    .line 10754
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10757
    .end local v0    # "j":I
    :cond_0
    invoke-static {v10}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v11

    .line 10759
    .local v11, "notedAppOps":Ljava/util/BitSet;
    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10761
    sget-object v12, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 10762
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v11, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v4, v3

    .local v4, "code":I
    :goto_2
    const/4 v3, -0x1

    if-eq v4, v3, :cond_3

    .line 10764
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_1

    .line 10765
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    goto :goto_3

    .line 10767
    :cond_1
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v7

    .line 10768
    .local v7, "message":Ljava/lang/String;
    sget-object v13, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/AsyncNotedAppOp;

    .line 10769
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 10770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 10768
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10771
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_2

    .line 10772
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10763
    .end local v7    # "message":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v4, v3

    goto :goto_2

    .line 10776
    .end local v4    # "code":I
    :cond_3
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10777
    invoke-virtual {v11, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "code":I
    :goto_4
    if-eq v0, v3, :cond_4

    .line 10779
    sget-object v4, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v0, v6}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10778
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_4

    .line 10776
    .end local v0    # "code":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 10751
    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local v10    # "rawNotedAppOps":[J
    .end local v11    # "notedAppOps":Ljava/util/BitSet;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 10783
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private static readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 11421
    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 11422
    .local v0, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .locals 7
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 11401
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11402
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 11403
    const/4 v1, 0x0

    return-object v1

    .line 11405
    :cond_0
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 11406
    .local v1, "array":Landroid/util/LongSparseLongArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11407
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 11406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11409
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static resolveFirstUnrestrictedUidState(I)I
    .locals 1
    .param p0, "op"    # I

    .line 611
    const/16 v0, 0x1f4

    return v0
.end method

.method public static resolveLastRestrictedUidState(I)I
    .locals 1
    .param p0, "op"    # I

    .line 622
    const/16 v0, 0x258

    return v0
.end method

.method public static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8577
    if-nez p0, :cond_0

    .line 8578
    const-string/jumbo v0, "root"

    return-object v0

    .line 8579
    :cond_0
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    .line 8580
    const-string v0, "com.android.shell"

    return-object v0

    .line 8581
    :cond_1
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_2

    .line 8582
    const-string/jumbo v0, "media"

    return-object v0

    .line 8583
    :cond_2
    const/16 v0, 0x411

    if-ne p0, v0, :cond_3

    .line 8584
    const-string v0, "audioserver"

    return-object v0

    .line 8585
    :cond_3
    const/16 v0, 0x417

    if-ne p0, v0, :cond_4

    .line 8586
    const-string v0, "cameraserver"

    return-object v0

    .line 8587
    :cond_4
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_5

    if-nez p1, :cond_5

    .line 8588
    const-string v0, "android"

    return-object v0

    .line 8590
    :cond_5
    return-object p1
.end method

.method public static resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V
    .locals 2
    .param p0, "prevCollection"    # Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    .line 10524
    if-eqz p0, :cond_0

    .line 10525
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    iget v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10527
    iget-object v0, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 10528
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10531
    :cond_0
    return-void
.end method

.method public static shouldForceCollectNoteForOp(I)Z
    .locals 3
    .param p0, "op"    # I

    .line 3204
    const/16 v0, 0x9b

    const-string/jumbo v1, "opCode"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3205
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Landroid/app/AppOpInfo;->forceCollectNotes:Z

    return v0
.end method

.method public static startNotedAppOpsCollection(I)V
    .locals 2
    .param p0, "callingUid"    # I

    .line 10470
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10471
    return-void
.end method

.method private startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "virtualDeviceId"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 10105
    move-object/from16 v1, p0

    move/from16 v4, p2

    :try_start_0
    invoke-direct {v1, v4}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10106
    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct {v1, v5, v6, v4}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 10107
    .local v0, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v7, 0x0

    const/4 v15, 0x1

    if-ne v2, v3, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move v2, v7

    .line 10108
    .local v2, "shouldCollectMessage":Z
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 10109
    if-nez p8, :cond_1

    .line 10111
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 10112
    .end local p8    # "message":Ljava/lang/String;
    .local v8, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move-object v10, v8

    move v11, v2

    goto :goto_1

    .line 10117
    .end local v8    # "message":Ljava/lang/String;
    .restart local p8    # "message":Ljava/lang/String;
    :cond_1
    move-object/from16 v10, p8

    move v11, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p8    # "message":Ljava/lang/String;
    .local v10, "message":Ljava/lang/String;
    .local v11, "shouldCollectMessage":Z
    :goto_1
    if-nez p7, :cond_3

    .line 10118
    :try_start_1
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v3, :cond_2

    move v9, v15

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    move-object/from16 v3, p1

    move/from16 v8, p5

    move-object/from16 v7, p6

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    goto :goto_3

    .line 10122
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    :cond_3
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v3, :cond_4

    move v7, v15

    :cond_4
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v8, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move v12, v11

    move-object v11, v10

    move v10, v7

    move-object/from16 v7, p6

    .end local v10    # "message":Ljava/lang/String;
    .local v11, "message":Ljava/lang/String;
    .local v12, "shouldCollectMessage":Z
    :try_start_2
    invoke-interface/range {v2 .. v14}, Lcom/android/internal/app/IAppOpsService;->startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v10, v11

    move v11, v12

    .line 10127
    .end local v12    # "shouldCollectMessage":Z
    .restart local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v10    # "message":Ljava/lang/String;
    .local v11, "shouldCollectMessage":Z
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 10128
    if-ne v0, v15, :cond_5

    .line 10129
    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_4

    .line 10130
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 10131
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10135
    :cond_6
    :goto_4
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return v3

    .line 10136
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v10    # "message":Ljava/lang/String;
    .local v11, "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v11

    .end local v11    # "message":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    .end local v10    # "message":Ljava/lang/String;
    .restart local p8    # "message":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v10, p8

    .line 10137
    .end local p8    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v10    # "message":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 3
    .param p0, "op"    # Ljava/lang/String;

    .line 3307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3308
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3309
    return v0

    .line 3307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3312
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .line 9079
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 9080
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 9083
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 9081
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .locals 11
    .param p0, "counts"    # Landroid/util/LongSparseLongArray;
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I

    .line 7628
    if-nez p0, :cond_0

    .line 7629
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7631
    :cond_0
    const-wide/16 v0, 0x0

    .line 7632
    .local v0, "sum":J
    :goto_0
    if-eqz p3, :cond_4

    .line 7633
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 7634
    .local v2, "flag":I
    not-int v3, v2

    and-int/2addr p3, v3

    .line 7635
    sget-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 7636
    .local v6, "uidState":I
    if-lt v6, p1, :cond_2

    if-le v6, p2, :cond_1

    .line 7637
    goto :goto_2

    .line 7639
    :cond_1
    invoke-static {v6, v2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    .line 7640
    .local v7, "key":J
    invoke-virtual {p0, v7, v8}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v9

    add-long/2addr v0, v9

    .line 7635
    .end local v6    # "uidState":I
    .end local v7    # "key":J
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7642
    .end local v2    # "flag":I
    :cond_3
    goto :goto_0

    .line 7643
    :cond_4
    return-wide v0
.end method

.method public static toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 3477
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toReceiverId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 3455
    if-nez p0, :cond_0

    .line 3456
    const-string/jumbo v0, "null"

    return-object v0

    .line 3457
    :cond_0
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 3458
    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3460
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uidStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "uidState"    # I

    .line 11448
    sparse-switch p0, :sswitch_data_0

    .line 11471
    const-string v0, "UNKNOWN"

    return-object v0

    .line 11468
    :sswitch_0
    const-string v0, "UID_STATE_CACHED"

    return-object v0

    .line 11465
    :sswitch_1
    const-string v0, "UID_STATE_BACKGROUND"

    return-object v0

    .line 11462
    :sswitch_2
    const-string v0, "UID_STATE_FOREGROUND"

    return-object v0

    .line 11459
    :sswitch_3
    const-string v0, "UID_STATE_FOREGROUND_SERVICE"

    return-object v0

    .line 11456
    :sswitch_4
    const-string v0, "UID_STATE_FOREGROUND_SERVICE_LOCATION"

    return-object v0

    .line 11453
    :sswitch_5
    const-string v0, "UID_STATE_TOP"

    return-object v0

    .line 11450
    :sswitch_6
    const-string v0, "UID_STATE_PERSISTENT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_4
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_1
        0x2bc -> :sswitch_0
    .end sparse-switch
.end method

.method private static writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 11415
    .local p0, "array":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 11416
    .local v0, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11417
    return-void
.end method

.method private static writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "array"    # Landroid/util/LongSparseLongArray;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 11387
    if-eqz p0, :cond_1

    .line 11388
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 11389
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11391
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11392
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11394
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 11395
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11397
    :goto_1
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 11222
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11225
    nop

    .line 11226
    return-void

    .line 11223
    :catch_0
    move-exception v0

    .line 11224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 9876
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 9877
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9880
    return v0

    .line 9878
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "stream":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9881
    .end local v0    # "mode":I
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "stream":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 9893
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9894
    :catch_0
    move-exception v0

    .line 9895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9798
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 9799
    .local p1, "mode":I
    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 9802
    return p1

    .line 9800
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p0, v1, v2, v3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9144
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9176
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 9178
    .local p2, "mode":I
    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 9181
    return p2

    .line 9179
    :cond_0
    new-instance p3, Ljava/lang/SecurityException;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p0, p4, v2, v3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9828
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public checkOpNoThrow(ILandroid/content/AttributionSource;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 9814
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9815
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9814
    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9213
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9191
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    return p2
.end method

.method public checkOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9203
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    return p2
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9861
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 9867
    nop

    .line 9868
    return-void

    .line 9862
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9865
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9866
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearHistory()V
    .locals 2

    .line 11254
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->clearHistory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11257
    nop

    .line 11258
    return-void

    .line 11255
    :catch_0
    move-exception v0

    .line 11256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11290
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11291
    :catch_0
    move-exception v0

    .line 11292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(I)V
    .locals 3
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10289
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10290
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10317
    return-void
.end method

.method public finishOp(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 10326
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 10327
    return-void
.end method

.method public finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 10347
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10348
    return-void
.end method

.method public finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 10335
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 10336
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 10337
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v6

    .line 10335
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "op":I
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10338
    return-void
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10296
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10297
    return-void
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 10307
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10308
    return-void
.end method

.method public finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V
    .locals 3
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z

    .line 10399
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10400
    invoke-static {p2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 10399
    invoke-interface {v0, p1, v1, v2, p4}, Lcom/android/internal/app/IAppOpsService;->finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10403
    nop

    .line 10404
    return-void

    .line 10401
    :catch_0
    move-exception v0

    .line 10402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;

    .line 10378
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v6

    .line 10379
    .local v6, "token":Landroid/os/IBinder;
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    new-instance v1, Landroid/content/AttributionSource;

    const/4 v3, -0x1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "proxiedUid":I
    .end local p3    # "proxiedPackageName":Ljava/lang/String;
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v2, "proxiedUid":I
    .local v4, "proxiedPackageName":Ljava/lang/String;
    .local v5, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v7, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v6, p1, v0, p2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 10382
    return-void
.end method

.method public getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 17
    .param p1, "request"    # Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 8334
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8335
    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8337
    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8351
    nop

    .line 8352
    return-void

    .line 8349
    :catch_0
    move-exception v0

    .line 8350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getHistoricalOpsFromDiskRaw(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 17
    .param p1, "request"    # Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 8374
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8375
    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8377
    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8391
    nop

    .line 8392
    return-void

    .line 8389
    :catch_0
    move-exception v0

    .line 8390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8274
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8275
    :catch_0
    move-exception v0

    .line 8276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public varargs getOpsForPackage(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8300
    const/4 v0, 0x0

    .line 8301
    .local v0, "opCodes":[I
    if-eqz p3, :cond_0

    .line 8302
    array-length v1, p3

    new-array v0, v1, [I

    .line 8303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 8304
    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 8303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8308
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    .line 8309
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v1, :cond_1

    .line 8310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 8312
    :cond_1
    return-object v1

    .line 8313
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_0
    move-exception v1

    .line 8314
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8241
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const-string v1, "default:0"

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8243
    :catch_0
    move-exception v0

    .line 8244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesForOps([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "ops"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8174
    if-eqz p1, :cond_1

    .line 8175
    array-length v0, p1

    .line 8176
    .local v0, "opCount":I
    new-array v1, v0, [I

    .line 8177
    .local v1, "opCodes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8178
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 8177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8180
    .end local v0    # "opCount":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 8181
    .end local v1    # "opCodes":[I
    :cond_1
    const/4 v1, 0x0

    .line 8183
    .restart local v1    # "opCodes":[I
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 8184
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8207
    if-eqz p1, :cond_1

    .line 8208
    array-length v0, p1

    .line 8209
    .local v0, "opCount":I
    new-array v1, v0, [I

    .line 8210
    .local v1, "opCodes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8211
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 8210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8213
    .end local v0    # "opCount":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 8214
    .end local v1    # "opCodes":[I
    :cond_1
    const/4 v1, 0x0

    .line 8218
    .restart local v1    # "opCodes":[I
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8221
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    nop

    .line 8222
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    return-object v2

    .line 8219
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_0
    move-exception v0

    .line 8220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getPermissionGroupUsageForPrivacyIndicator(Z)Ljava/util/List;
    .locals 2
    .param p1, "includeMicrophoneUsage"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 10609
    iget-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_0

    .line 10610
    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 10613
    :cond_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0, p1}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataForAllDevices(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isOpActive(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10417
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 11156
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11157
    :catch_0
    move-exception v0

    .line 11158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isProxying(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "op"    # I
    .param p2, "proxyAttributionTag"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .line 10435
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10436
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10435
    move v1, p1

    move v4, p3

    move-object v5, p4

    .end local p1    # "op":I
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":I
    .local v4, "proxiedUid":I
    .local v5, "proxiedPackageName":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 10437
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "op":I
    .end local v4    # "proxiedUid":I
    .end local v5    # "proxiedPackageName":Ljava/lang/String;
    .restart local p1    # "op":I
    .restart local p3    # "proxiedUid":I
    .restart local p4    # "proxiedPackageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move v1, p1

    move v4, p3

    move-object v5, p4

    move-object p1, v0

    .line 10438
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedPackageName":Ljava/lang/String;
    .restart local v1    # "op":I
    .restart local v4    # "proxiedUid":I
    .restart local v5    # "proxiedPackageName":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public noteOp(I)I
    .locals 6
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9308
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9321
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9389
    invoke-virtual/range {p0 .. p5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 9390
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9393
    return v0

    .line 9391
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9295
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9379
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9414
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9448
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 9437
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9438
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9437
    move-object v0, p0

    move v1, p1

    move-object v6, p3

    .end local p1    # "op":I
    .end local p3    # "message":Ljava/lang/String;
    .local v1, "op":I
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9401
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9425
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 5
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 9644
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 9645
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9653
    return v0

    .line 9646
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9647
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9648
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9649
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9650
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .end local p1    # "op":I
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9595
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9597
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move-object v5, p2

    move v3, p3

    move-object v6, p4

    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v3, "proxiedUid":I
    .local v5, "proxiedPackageName":Ljava/lang/String;
    .local v6, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9595
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9622
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    .local v3, "proxiedUid":I
    .local v4, "proxiedAttributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 11
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 9704
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 9707
    .local v1, "myUid":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 9708
    nop

    .line 9709
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 9710
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 9708
    invoke-direct {p0, v0, v2, p1}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 9711
    .local v0, "collectionMode":I
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-ne v1, v2, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    move v2, v3

    .line 9712
    .local v2, "shouldCollectMessage":Z
    :goto_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 9713
    if-nez p3, :cond_1

    .line 9715
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9716
    .end local p3    # "message":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move-object v7, v6

    move v8, v2

    goto :goto_1

    .line 9720
    .end local v6    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :cond_1
    move-object v7, p3

    move v8, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p3    # "message":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    .local v8, "shouldCollectMessage":Z
    :goto_1
    move v2, v3

    :try_start_1
    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 9721
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v0, v5, :cond_2

    move v2, v10

    .line 9720
    :cond_2
    move v4, p1

    move v9, p4

    move-object v5, v6

    move v6, v2

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .line 9724
    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 9725
    if-ne v0, v10, :cond_3

    .line 9726
    invoke-direct {p0, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_2

    .line 9727
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    .line 9729
    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_4

    .line 9731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 9732
    :cond_4
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9736
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 9737
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v8    # "shouldCollectMessage":Z
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v7    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v7, p3

    .line 9738
    .end local p3    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "message":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9670
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .local v1, "op":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    .local v3, "proxiedUid":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9681
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9682
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9684
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v5, -0x1

    move-object v6, p2

    move v4, p3

    move-object v7, p4

    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v4, "proxiedUid":I
    .local v6, "proxiedPackageName":Ljava/lang/String;
    .local v7, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9681
    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p5, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public offsetHistory(J)V
    .locals 2
    .param p1, "offsetMillis"    # J

    .line 11200
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->offsetHistory(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11203
    nop

    .line 11204
    return-void

    .line 11201
    :catch_0
    move-exception v0

    .line 11202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public rebootHistory(J)V
    .locals 2
    .param p1, "offlineDurationMillis"    # J

    .line 11273
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->rebootHistory(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11276
    nop

    .line 11277
    return-void

    .line 11274
    :catch_0
    move-exception v0

    .line 11275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reloadNonHistoricalState()V
    .locals 2

    .line 8403
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->reloadNonHistoricalState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8406
    nop

    .line 8407
    return-void

    .line 8404
    :catch_0
    move-exception v0

    .line 8405
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetAllModes()V
    .locals 3

    .line 8538
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8541
    nop

    .line 8542
    return-void

    .line 8539
    :catch_0
    move-exception v0

    .line 8540
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetHistoryParameters()V
    .locals 2

    .line 11239
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetHistoryParameters()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11242
    nop

    .line 11243
    return-void

    .line 11240
    :catch_0
    move-exception v0

    .line 11241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetPackageOpsNoHistory(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10454
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->resetPackageOpsNoHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10457
    nop

    .line 10458
    return-void

    .line 10455
    :catch_0
    move-exception v0

    .line 10456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setHistoryParameters(IJI)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 11183
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setHistoryParameters(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11186
    nop

    .line 11187
    return-void

    .line 11184
    :catch_0
    move-exception v0

    .line 11185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 8482
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8485
    nop

    .line 8486
    return-void

    .line 8483
    :catch_0
    move-exception v0

    .line 8484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8504
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8507
    nop

    .line 8508
    return-void

    .line 8505
    :catch_0
    move-exception v0

    .line 8506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNotedAppOpsCollector(Landroid/app/AppOpsManager$AppOpsCollector;)V
    .locals 3
    .param p1, "collector"    # Landroid/app/AppOpsManager$AppOpsCollector;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10917
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10918
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 10919
    :try_start_0
    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10920
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 10922
    :cond_0
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    goto :goto_0

    .line 10923
    :cond_1
    sget-object v2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v2, :cond_2

    .line 10924
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 10926
    :cond_2
    :goto_0
    monitor-exit v0

    .line 10927
    return-void

    .line 10926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V
    .locals 1
    .param p1, "asyncExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 10805
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;I)V

    .line 10806
    return-void
.end method

.method public setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;I)V
    .locals 8
    .param p1, "asyncExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p3, "flags"    # I

    .line 10845
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 10846
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 10848
    sget-object v2, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 10849
    if-nez p2, :cond_5

    .line 10850
    :try_start_0
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 10851
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    const-string v1, "No callback is currently registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 10854
    sget-boolean v0, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 10856
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v3}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10860
    goto :goto_3

    .line 10858
    :catch_0
    move-exception v0

    .line 10859
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10863
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    goto/16 :goto_8

    .line 10865
    :cond_5
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v0

    :goto_4
    const-string v4, "Another callback is already registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 10868
    invoke-static {p2, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fputmAsyncExecutor(Landroid/app/AppOpsManager$OnOpNotedCallback;Ljava/util/concurrent/Executor;)V

    .line 10869
    sput-object p2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 10870
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    sput-boolean v0, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z

    .line 10872
    const/4 v0, 0x0

    .line 10873
    .local v0, "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    sget-boolean v1, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_8

    .line 10875
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v4}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 10877
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 10880
    goto :goto_5

    .line 10878
    :catch_1
    move-exception v1

    .line 10879
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 10884
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_5
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 10885
    .local v1, "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 10886
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 10887
    .local v3, "numMissedAsyncOps":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v3, :cond_9

    .line 10888
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    .line 10889
    .local v5, "asyncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10887
    .end local v5    # "asyncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 10893
    .end local v3    # "numMissedAsyncOps":I
    .end local v4    # "i":I
    :cond_9
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10894
    .local v3, "numMissedSyncOps":I
    if-eqz v1, :cond_a

    .line 10895
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v3, :cond_a

    .line 10896
    sget-object v5, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    .line 10897
    .local v5, "syncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10895
    .end local v5    # "syncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 10901
    .end local v4    # "i":I
    :cond_a
    sget-object v4, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 10903
    .end local v0    # "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    .end local v1    # "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    .end local v3    # "numMissedSyncOps":I
    :goto_8
    monitor-exit v2

    .line 10904
    return-void

    .line 10903
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .line 8526
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v4, v0

    .line 8527
    .local v4, "uid":I
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "code":I
    .end local p2    # "usage":I
    .end local p3    # "mode":I
    .end local p4    # "exceptionPackages":[Ljava/lang/String;
    .local v2, "code":I
    .local v3, "usage":I
    .local v5, "mode":I
    .local v6, "exceptionPackages":[Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8530
    .end local v4    # "uid":I
    nop

    .line 8531
    return-void

    .line 8528
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "code":I
    .end local v3    # "usage":I
    .end local v5    # "mode":I
    .end local v6    # "exceptionPackages":[Ljava/lang/String;
    .restart local p1    # "code":I
    .restart local p2    # "usage":I
    .restart local p3    # "mode":I
    .restart local p4    # "exceptionPackages":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 8529
    .end local p2    # "usage":I
    .end local p3    # "mode":I
    .end local p4    # "exceptionPackages":[Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v3    # "usage":I
    .restart local v5    # "mode":I
    .restart local v6    # "exceptionPackages":[Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 8422
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8425
    nop

    .line 8426
    return-void

    .line 8423
    :catch_0
    move-exception v0

    .line 8424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .locals 2
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8442
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8445
    nop

    .line 8446
    return-void

    .line 8443
    :catch_0
    move-exception v0

    .line 8444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .line 8450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V

    .line 8451
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 8459
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8460
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 8459
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "code":I
    .end local p2    # "restricted":Z
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .local v2, "code":I
    .local v3, "restricted":Z
    .local v4, "token":Landroid/os/IBinder;
    .local v5, "excludedPackageTags":Landroid/os/PackageTagsList;
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 8461
    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "excludedPackageTags"    # Landroid/os/PackageTagsList;
    .param p5, "userId"    # I

    .line 8470
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v4, p5

    .end local p1    # "code":I
    .end local p2    # "restricted":Z
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .end local p5    # "userId":I
    .local v1, "code":I
    .local v2, "restricted":Z
    .local v3, "token":Landroid/os/IBinder;
    .local v4, "userId":I
    .local v5, "excludedPackageTags":Landroid/os/PackageTagsList;
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8473
    nop

    .line 8474
    return-void

    .line 8471
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v1    # "code":I
    .end local v2    # "restricted":Z
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "userId":I
    .end local v5    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .restart local p1    # "code":I
    .restart local p2    # "restricted":Z
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .restart local p5    # "userId":I
    :catch_1
    move-exception v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v4, p5

    move-object p1, v0

    .line 8472
    .end local p2    # "restricted":Z
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .end local p5    # "userId":I
    .restart local v1    # "code":I
    .restart local v2    # "restricted":Z
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local v4    # "userId":I
    .restart local v5    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public startOp(I)I
    .locals 7
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9948
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9958
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOp(IILjava/lang/String;Z)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9968
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "startIfModeDefault":Z
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "startIfModeDefault":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 10004
    invoke-virtual/range {p0 .. p6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10006
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 10009
    return v0

    .line 10007
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9938
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9994
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10027
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOpNoThrow(IILjava/lang/String;Z)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10037
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "startIfModeDefault":Z
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "startIfModeDefault":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 10058
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "startIfModeDefault":Z
    .end local p5    # "attributionTag":Ljava/lang/String;
    .end local p6    # "message":Ljava/lang/String;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "startIfModeDefault":Z
    .local v7, "attributionTag":Ljava/lang/String;
    .local v8, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;

    .line 10069
    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v8

    return v8
.end method

.method public startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 10096
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I

    move-result v7

    return v7
.end method

.method public startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 10082
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 10083
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10084
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    .line 10082
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I

    move-result v3

    return v3
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10017
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10048
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10161
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10163
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "proxiedUid":I
    .end local p3    # "proxiedPackageName":Ljava/lang/String;
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v3, "proxiedUid":I
    .local v5, "proxiedPackageName":Ljava/lang/String;
    .local v6, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10161
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 10186
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 10188
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 10196
    return v0

    .line 10189
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10190
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10191
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10192
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10193
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 10226
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "op":I
    .end local p2    # "attributionSource":Landroid/content/AttributionSource;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "skipProxyOperation":Z
    .local v2, "op":I
    .local v3, "attributionSource":Landroid/content/AttributionSource;
    .local v4, "message":Ljava/lang/String;
    .local v5, "skipProxyOperation":Z
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result p1

    return p1
.end method

.method public startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I
    .locals 14
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "skipProxyOperation"    # Z
    .param p6, "proxyAttributionFlags"    # I
    .param p7, "proxiedAttributionFlags"    # I
    .param p8, "attributionChainId"    # I

    .line 10246
    move/from16 v2, p2

    :try_start_0
    invoke-direct {p0, v2}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10247
    nop

    .line 10248
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 10249
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10247
    invoke-direct {p0, v0, v1, v2}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    move v12, v0

    .line 10250
    .local v12, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-ne v0, v1, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v3

    .line 10251
    .local v0, "shouldCollectMessage":Z
    :goto_0
    const/4 v1, 0x3

    if-ne v12, v1, :cond_1

    .line 10252
    if-nez p4, :cond_1

    .line 10254
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10255
    .end local p4    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    const/4 v0, 0x1

    move-object v6, v4

    move v7, v0

    goto :goto_1

    .line 10259
    .end local v4    # "message":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    :cond_1
    move-object/from16 v6, p4

    move v7, v0

    .end local v0    # "shouldCollectMessage":Z
    .end local p4    # "message":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    .local v7, "shouldCollectMessage":Z
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10260
    move v4, v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    if-ne v12, v1, :cond_2

    move v5, v13

    goto :goto_2

    :cond_2
    move v5, v4

    .line 10259
    :goto_2
    const/4 v4, 0x0

    move-object v1, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService;->startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 10264
    .local v0, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 10265
    if-ne v12, v13, :cond_3

    .line 10266
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_3

    .line 10267
    :cond_3
    const/4 v1, 0x2

    if-ne v12, v1, :cond_5

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 10270
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 10269
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    .line 10271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 10272
    :cond_4
    invoke-static {v0}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10276
    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 10277
    .end local v0    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v7    # "shouldCollectMessage":Z
    .end local v12    # "collectionMode":I
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v6    # "message":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v6, p4

    .line 10278
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "message":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startProxyOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10208
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10209
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10211
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v5, -0x1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "proxiedUid":I
    .end local p3    # "proxiedPackageName":Ljava/lang/String;
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v4, "proxiedUid":I
    .local v6, "proxiedPackageName":Ljava/lang/String;
    .local v7, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10208
    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p5, p2}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8716
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 8717
    .local v0, "strOps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 8718
    aget v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8720
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 8721
    return-void
.end method

.method public startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 4
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 8743
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8744
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8745
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8747
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8748
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 8749
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_0

    .line 8750
    monitor-exit v0

    return-void

    .line 8752
    :cond_0
    new-instance v2, Landroid/app/AppOpsManager$4;

    invoke-direct {v2, p0, p2, p3}, Landroid/app/AppOpsManager$4;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 8782
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .local v2, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8783
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8784
    array-length v0, p1

    new-array v0, v0, [I

    .line 8785
    .local v0, "rawOps":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 8786
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    .line 8785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8789
    .end local v1    # "i":I
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8792
    nop

    .line 8793
    return-void

    .line 8790
    :catch_0
    move-exception v1

    .line 8791
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 8783
    .end local v0    # "rawOps":[I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8651
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8652
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    .line 8653
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v1, :cond_0

    .line 8654
    new-instance v2, Landroid/app/AppOpsManager$3;

    invoke-direct {v2, p0, p4}, Landroid/app/AppOpsManager$3;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    move-object v1, v2

    .line 8678
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8682
    :cond_0
    const-wide/32 v2, 0x8d50f1e

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 8684
    or-int/lit8 p3, p3, 0x2

    .line 8688
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8691
    nop

    .line 8692
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :try_start_2
    monitor-exit v0

    .line 8693
    return-void

    .line 8689
    .restart local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v2

    .line 8690
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    throw v3

    .line 8692
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8633
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8634
    return-void
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8617
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8618
    return-void
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8603
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8604
    return-void
.end method

.method public startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 1
    .param p1, "ops"    # [I
    .param p2, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 8974
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 8975
    return-void
.end method

.method public startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 9009
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9010
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 9011
    .local v1, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    if-eqz v1, :cond_0

    .line 9012
    monitor-exit v0

    return-void

    .line 9014
    :cond_0
    new-instance v2, Landroid/app/AppOpsManager$6;

    invoke-direct {v2, p0, p2, p3}, Landroid/app/AppOpsManager$6;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9036
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    .local v2, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9037
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9039
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9042
    nop

    .line 9043
    return-void

    .line 9040
    :catch_0
    move-exception v0

    .line 9041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9037
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startWatchingNoted([Ljava/lang/String;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 3
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8908
    array-length v0, p1

    new-array v0, v0, [I

    .line 8909
    .local v0, "intOps":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 8910
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 8909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8912
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 8913
    return-void
.end method

.method public startWatchingNoted([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 3
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8942
    array-length v0, p1

    new-array v0, v0, [I

    .line 8943
    .local v0, "intOps":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 8944
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 8943
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8946
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 8947
    return-void
.end method

.method public startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
    .locals 3
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 8839
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8840
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8841
    monitor-exit v0

    return-void

    .line 8843
    :cond_0
    new-instance v1, Landroid/app/AppOpsManager$5;

    invoke-direct {v1, p0, p2}, Landroid/app/AppOpsManager$5;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 8852
    .local v1, "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8853
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8855
    :try_start_1
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8858
    nop

    .line 8859
    return-void

    .line 8856
    :catch_0
    move-exception v0

    .line 8857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8853
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 8803
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8804
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8805
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_0

    .line 8807
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8810
    goto :goto_0

    .line 8808
    :catch_0
    move-exception v2

    .line 8809
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    throw v3

    .line 8812
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8813
    return-void

    .line 8812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8700
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8701
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8702
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v1, :cond_0

    .line 8704
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8707
    goto :goto_0

    .line 8705
    :catch_0
    move-exception v2

    .line 8706
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    throw v3

    .line 8709
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8710
    return-void

    .line 8709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9056
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9057
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9058
    .local v1, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    if-eqz v1, :cond_0

    .line 9060
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9063
    goto :goto_0

    .line 9061
    :catch_0
    move-exception v2

    .line 9062
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpNotedListener;
    throw v3

    .line 9065
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpNotedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 9066
    return-void

    .line 9065
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 8873
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8874
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsStartedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8875
    .local v1, "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    if-eqz v1, :cond_0

    .line 8877
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8880
    goto :goto_0

    .line 8878
    :catch_0
    move-exception v2

    .line 8879
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpStartedListener;
    throw v3

    .line 8882
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpStartedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 8883
    return-void

    .line 8882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9116
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9156
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9225
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpRawNoThrow(IILjava/lang/String;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9269
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I
    .locals 6
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 9246
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 9247
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 9248
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9246
    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9237
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpRawNoThrow(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 9260
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method
