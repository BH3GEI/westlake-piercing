.class public final Landroid/location/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/location/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DENSITY_BASED_COARSE_LOCATIONS:Ljava/lang/String; = "android.location.flags.density_based_coarse_locations"

.field public static final blacklist FLAG_DEPRECATE_PROVIDER_REQUEST_APIS:Ljava/lang/String; = "android.location.flags.deprecate_provider_request_apis"

.field public static final blacklist FLAG_DISABLE_STATIONARY_THROTTLING:Ljava/lang/String; = "android.location.flags.disable_stationary_throttling"

.field public static final blacklist FLAG_ENABLE_LOCATION_BYPASS:Ljava/lang/String; = "android.location.flags.enable_location_bypass"

.field public static final blacklist FLAG_ENABLE_NI_SUPL_MESSAGE_INJECTION_BY_CARRIER_CONFIG:Ljava/lang/String; = "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

.field public static final blacklist FLAG_ENABLE_NI_SUPL_MESSAGE_INJECTION_BY_CARRIER_CONFIG_BUGFIX:Ljava/lang/String; = "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

.field public static final blacklist FLAG_FIX_SERVICE_WATCHER:Ljava/lang/String; = "android.location.flags.fix_service_watcher"

.field public static final blacklist FLAG_GEOID_HEIGHTS_VIA_ALTITUDE_HAL:Ljava/lang/String; = "android.location.flags.geoid_heights_via_altitude_hal"

.field public static final blacklist FLAG_GNSS_API_MEASUREMENT_REQUEST_WORK_SOURCE:Ljava/lang/String; = "android.location.flags.gnss_api_measurement_request_work_source"

.field public static final blacklist FLAG_GNSS_API_NAVIC_L1:Ljava/lang/String; = "android.location.flags.gnss_api_navic_l1"

.field public static final blacklist FLAG_GNSS_ASSISTANCE_INTERFACE:Ljava/lang/String; = "android.location.flags.gnss_assistance_interface"

.field public static final blacklist FLAG_GNSS_CONFIGURATION_FROM_RESOURCE:Ljava/lang/String; = "android.location.flags.gnss_configuration_from_resource"

.field public static final blacklist FLAG_KEEP_GNSS_STATIONARY_THROTTLING:Ljava/lang/String; = "android.location.flags.keep_gnss_stationary_throttling"

.field public static final blacklist FLAG_LOCATION_BYPASS:Ljava/lang/String; = "android.location.flags.location_bypass"

.field public static final blacklist FLAG_LOCATION_VALIDATION:Ljava/lang/String; = "android.location.flags.location_validation"

.field public static final blacklist FLAG_NEW_GEOCODER:Ljava/lang/String; = "android.location.flags.new_geocoder"

.field public static final blacklist FLAG_POPULATION_DENSITY_PROVIDER:Ljava/lang/String; = "android.location.flags.population_density_provider"

.field public static final blacklist FLAG_RELEASE_SUPL_CONNECTION_ON_TIMEOUT:Ljava/lang/String; = "android.location.flags.release_supl_connection_on_timeout"

.field public static final blacklist FLAG_REPLACE_FUTURE_ELAPSED_REALTIME_JNI:Ljava/lang/String; = "android.location.flags.replace_future_elapsed_realtime_jni"

.field public static final blacklist FLAG_SUBSCRIPTIONS_CHANGED_LISTENER_THREAD:Ljava/lang/String; = "android.location.flags.subscriptions_changed_listener_thread"

.field public static final blacklist FLAG_USE_LEGACY_NTP_TIME:Ljava/lang/String; = "android.location.flags.use_legacy_ntp_time"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Landroid/location/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/location/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist densityBasedCoarseLocations()Z
    .locals 1

    .line 52
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->densityBasedCoarseLocations()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateProviderRequestApis()Z
    .locals 1

    .line 58
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->deprecateProviderRequestApis()Z

    move-result v0

    return v0
.end method

.method public static greylist disableStationaryThrottling()Z
    .locals 1

    .line 64
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->disableStationaryThrottling()Z

    move-result v0

    return v0
.end method

.method public static greylist enableLocationBypass()Z
    .locals 1

    .line 70
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->enableLocationBypass()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNiSuplMessageInjectionByCarrierConfig()Z
    .locals 1

    .line 76
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->enableNiSuplMessageInjectionByCarrierConfig()Z

    move-result v0

    return v0
.end method

.method public static greylist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .locals 1

    .line 82
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->enableNiSuplMessageInjectionByCarrierConfigBugfix()Z

    move-result v0

    return v0
.end method

.method public static greylist fixServiceWatcher()Z
    .locals 1

    .line 88
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->fixServiceWatcher()Z

    move-result v0

    return v0
.end method

.method public static greylist geoidHeightsViaAltitudeHal()Z
    .locals 1

    .line 94
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->geoidHeightsViaAltitudeHal()Z

    move-result v0

    return v0
.end method

.method public static greylist gnssApiMeasurementRequestWorkSource()Z
    .locals 1

    .line 100
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->gnssApiMeasurementRequestWorkSource()Z

    move-result v0

    return v0
.end method

.method public static greylist gnssApiNavicL1()Z
    .locals 1

    .line 106
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->gnssApiNavicL1()Z

    move-result v0

    return v0
.end method

.method public static greylist gnssAssistanceInterface()Z
    .locals 1

    .line 112
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->gnssAssistanceInterface()Z

    move-result v0

    return v0
.end method

.method public static greylist gnssConfigurationFromResource()Z
    .locals 1

    .line 118
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->gnssConfigurationFromResource()Z

    move-result v0

    return v0
.end method

.method public static greylist keepGnssStationaryThrottling()Z
    .locals 1

    .line 124
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->keepGnssStationaryThrottling()Z

    move-result v0

    return v0
.end method

.method public static greylist locationBypass()Z
    .locals 1

    .line 130
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->locationBypass()Z

    move-result v0

    return v0
.end method

.method public static greylist locationValidation()Z
    .locals 1

    .line 136
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->locationValidation()Z

    move-result v0

    return v0
.end method

.method public static greylist newGeocoder()Z
    .locals 1

    .line 142
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->newGeocoder()Z

    move-result v0

    return v0
.end method

.method public static greylist populationDensityProvider()Z
    .locals 1

    .line 148
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->populationDensityProvider()Z

    move-result v0

    return v0
.end method

.method public static greylist releaseSuplConnectionOnTimeout()Z
    .locals 1

    .line 154
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->releaseSuplConnectionOnTimeout()Z

    move-result v0

    return v0
.end method

.method public static greylist replaceFutureElapsedRealtimeJni()Z
    .locals 1

    .line 160
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->replaceFutureElapsedRealtimeJni()Z

    move-result v0

    return v0
.end method

.method public static greylist subscriptionsChangedListenerThread()Z
    .locals 1

    .line 166
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->subscriptionsChangedListenerThread()Z

    move-result v0

    return v0
.end method

.method public static greylist useLegacyNtpTime()Z
    .locals 1

    .line 172
    sget-object v0, Landroid/location/flags/Flags;->FEATURE_FLAGS:Landroid/location/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/location/flags/FeatureFlags;->useLegacyNtpTime()Z

    move-result v0

    return v0
.end method
