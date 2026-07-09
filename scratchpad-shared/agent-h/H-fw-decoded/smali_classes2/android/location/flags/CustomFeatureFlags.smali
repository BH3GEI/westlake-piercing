.class public Landroid/location/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/location/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/location/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/location/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/location/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v1, Ljava/util/HashSet;

    const-string v22, "android.location.flags.use_legacy_ntp_time"

    const-string v23, ""

    const-string v2, "android.location.flags.density_based_coarse_locations"

    const-string v3, "android.location.flags.deprecate_provider_request_apis"

    const-string v4, "android.location.flags.disable_stationary_throttling"

    const-string v5, "android.location.flags.enable_location_bypass"

    const-string v6, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

    const-string v7, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

    const-string v8, "android.location.flags.fix_service_watcher"

    const-string v9, "android.location.flags.geoid_heights_via_altitude_hal"

    const-string v10, "android.location.flags.gnss_api_measurement_request_work_source"

    const-string v11, "android.location.flags.gnss_api_navic_l1"

    const-string v12, "android.location.flags.gnss_assistance_interface"

    const-string v13, "android.location.flags.gnss_configuration_from_resource"

    const-string v14, "android.location.flags.keep_gnss_stationary_throttling"

    const-string v15, "android.location.flags.location_bypass"

    const-string v16, "android.location.flags.location_validation"

    const-string v17, "android.location.flags.new_geocoder"

    const-string v18, "android.location.flags.population_density_provider"

    const-string v19, "android.location.flags.release_supl_connection_on_timeout"

    const-string v20, "android.location.flags.replace_future_elapsed_realtime_jni"

    const-string v21, "android.location.flags.subscriptions_changed_listener_thread"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/location/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/location/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist densityBasedCoarseLocations()Z
    .locals 2

    .line 22
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.location.flags.density_based_coarse_locations"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateProviderRequestApis()Z
    .locals 2

    .line 29
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.location.flags.deprecate_provider_request_apis"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableStationaryThrottling()Z
    .locals 2

    .line 36
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.location.flags.disable_stationary_throttling"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableLocationBypass()Z
    .locals 2

    .line 43
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.location.flags.enable_location_bypass"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNiSuplMessageInjectionByCarrierConfig()Z
    .locals 2

    .line 50
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .locals 2

    .line 57
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixServiceWatcher()Z
    .locals 2

    .line 64
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.location.flags.fix_service_watcher"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist geoidHeightsViaAltitudeHal()Z
    .locals 2

    .line 71
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.location.flags.geoid_heights_via_altitude_hal"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    const-string v20, "android.location.flags.subscriptions_changed_listener_thread"

    const-string v21, "android.location.flags.use_legacy_ntp_time"

    const-string v1, "android.location.flags.density_based_coarse_locations"

    const-string v2, "android.location.flags.deprecate_provider_request_apis"

    const-string v3, "android.location.flags.disable_stationary_throttling"

    const-string v4, "android.location.flags.enable_location_bypass"

    const-string v5, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

    const-string v6, "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

    const-string v7, "android.location.flags.fix_service_watcher"

    const-string v8, "android.location.flags.geoid_heights_via_altitude_hal"

    const-string v9, "android.location.flags.gnss_api_measurement_request_work_source"

    const-string v10, "android.location.flags.gnss_api_navic_l1"

    const-string v11, "android.location.flags.gnss_assistance_interface"

    const-string v12, "android.location.flags.gnss_configuration_from_resource"

    const-string v13, "android.location.flags.keep_gnss_stationary_throttling"

    const-string v14, "android.location.flags.location_bypass"

    const-string v15, "android.location.flags.location_validation"

    const-string v16, "android.location.flags.new_geocoder"

    const-string v17, "android.location.flags.population_density_provider"

    const-string v18, "android.location.flags.release_supl_connection_on_timeout"

    const-string v19, "android.location.flags.replace_future_elapsed_realtime_jni"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/location/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 180
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/location/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/location/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssApiMeasurementRequestWorkSource()Z
    .locals 2

    .line 78
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.location.flags.gnss_api_measurement_request_work_source"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssApiNavicL1()Z
    .locals 2

    .line 85
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.location.flags.gnss_api_navic_l1"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssAssistanceInterface()Z
    .locals 2

    .line 92
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.location.flags.gnss_assistance_interface"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist gnssConfigurationFromResource()Z
    .locals 2

    .line 99
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.location.flags.gnss_configuration_from_resource"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/location/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Landroid/location/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keepGnssStationaryThrottling()Z
    .locals 2

    .line 106
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.location.flags.keep_gnss_stationary_throttling"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist locationBypass()Z
    .locals 2

    .line 113
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.location.flags.location_bypass"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist locationValidation()Z
    .locals 2

    .line 120
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.location.flags.location_validation"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newGeocoder()Z
    .locals 2

    .line 127
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.location.flags.new_geocoder"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist populationDensityProvider()Z
    .locals 2

    .line 134
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.location.flags.population_density_provider"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist releaseSuplConnectionOnTimeout()Z
    .locals 2

    .line 141
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.location.flags.release_supl_connection_on_timeout"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist replaceFutureElapsedRealtimeJni()Z
    .locals 2

    .line 148
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.location.flags.replace_future_elapsed_realtime_jni"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist subscriptionsChangedListenerThread()Z
    .locals 2

    .line 155
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.location.flags.subscriptions_changed_listener_thread"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useLegacyNtpTime()Z
    .locals 2

    .line 162
    new-instance v0, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/location/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.location.flags.use_legacy_ntp_time"

    invoke-virtual {p0, v1, v0}, Landroid/location/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
