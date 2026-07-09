.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist addBannersToPrivacySensitiveAppsForAaos:Z

.field private static blacklist appPermissionFragmentUsesPreferences:Z

.field private static blacklist archivingReadOnly:Z

.field private static blacklist crossUserRoleEnabled:Z

.field private static blacklist crossUserRoleUxBugfixEnabled:Z

.field private static blacklist declutteredPermissionManagerEnabled:Z

.field private static blacklist defaultAppsRecommendationEnabled:Z

.field private static blacklist enableCoarseFineLocationPromptForAaos:Z

.field private static blacklist enhancedConfirmationBackportEnabled:Z

.field private static blacklist expressiveDesignEnabled:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist odadNotificationsSupported:Z

.field private static blacklist permissionTimelineAttributionLabelFix:Z

.field private static blacklist privateProfileSupported:Z

.field private static blacklist privateProfileTitleApi:Z

.field private static blacklist safetyCenterEnabledNoDeviceConfig:Z

.field private static blacklist safetyCenterIssueOnlyAffectsGroupStatus:Z

.field private static blacklist wearComposeMaterial3:Z

.field private static blacklist wearPrivacyDashboardEnabledReadOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    .line 22
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    .line 23
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    .line 25
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    .line 27
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    .line 28
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .locals 4

    .line 31
    const-string v0, "FeatureFlagsImplExport"

    :try_start_0
    const-string v1, "com.android.permission.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 32
    .local v1, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v2, "add_banners_to_privacy_sensitive_apps_for_aaos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    .line 33
    const-string v2, "app_permission_fragment_uses_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    .line 34
    const-string v2, "archiving_read_only"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    .line 35
    const-string v2, "cross_user_role_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    .line 36
    const-string v2, "cross_user_role_ux_bugfix_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    .line 37
    const-string v2, "decluttered_permission_manager_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    .line 38
    const-string v2, "default_apps_recommendation_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    .line 39
    const-string v2, "enable_coarse_fine_location_prompt_for_aaos"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    .line 40
    const-string v2, "enhanced_confirmation_backport_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    .line 41
    const-string v2, "expressive_design_enabled"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    .line 42
    const-string v2, "odad_notifications_supported"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    .line 43
    const-string v2, "permission_timeline_attribution_label_fix"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    .line 44
    const-string/jumbo v2, "private_profile_supported"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    .line 45
    const-string/jumbo v2, "private_profile_title_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    .line 46
    const-string/jumbo v2, "safety_center_enabled_no_device_config"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    .line 47
    const-string/jumbo v2, "safety_center_issue_only_affects_group_status"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    .line 48
    const-string/jumbo v2, "wear_compose_material3"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    .line 49
    const-string/jumbo v2, "wear_privacy_dashboard_enabled_read_only"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 58
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist addBannersToPrivacySensitiveAppsForAaos()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 65
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->addBannersToPrivacySensitiveAppsForAaos:Z

    return v0
.end method

.method public blacklist appPermissionFragmentUsesPreferences()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 73
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->appPermissionFragmentUsesPreferences:Z

    return v0
.end method

.method public blacklist archivingReadOnly()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 81
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->archivingReadOnly:Z

    return v0
.end method

.method public blacklist crossUserRoleEnabled()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 89
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleEnabled:Z

    return v0
.end method

.method public blacklist crossUserRoleUxBugfixEnabled()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 97
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->crossUserRoleUxBugfixEnabled:Z

    return v0
.end method

.method public blacklist declutteredPermissionManagerEnabled()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 105
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->declutteredPermissionManagerEnabled:Z

    return v0
.end method

.method public blacklist defaultAppsRecommendationEnabled()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 113
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->defaultAppsRecommendationEnabled:Z

    return v0
.end method

.method public blacklist enableCoarseFineLocationPromptForAaos()Z
    .locals 1

    .line 118
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 121
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enableCoarseFineLocationPromptForAaos:Z

    return v0
.end method

.method public blacklist enhancedConfirmationBackportEnabled()Z
    .locals 1

    .line 126
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 129
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->enhancedConfirmationBackportEnabled:Z

    return v0
.end method

.method public blacklist expressiveDesignEnabled()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 137
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->expressiveDesignEnabled:Z

    return v0
.end method

.method public blacklist odadNotificationsSupported()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 145
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->odadNotificationsSupported:Z

    return v0
.end method

.method public blacklist permissionTimelineAttributionLabelFix()Z
    .locals 1

    .line 150
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 153
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->permissionTimelineAttributionLabelFix:Z

    return v0
.end method

.method public blacklist privateProfileSupported()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 161
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileSupported:Z

    return v0
.end method

.method public blacklist privateProfileTitleApi()Z
    .locals 1

    .line 166
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 169
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->privateProfileTitleApi:Z

    return v0
.end method

.method public blacklist safetyCenterEnabledNoDeviceConfig()Z
    .locals 1

    .line 174
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 177
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterEnabledNoDeviceConfig:Z

    return v0
.end method

.method public blacklist safetyCenterIssueOnlyAffectsGroupStatus()Z
    .locals 1

    .line 182
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 185
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->safetyCenterIssueOnlyAffectsGroupStatus:Z

    return v0
.end method

.method public blacklist wearComposeMaterial3()Z
    .locals 1

    .line 190
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 193
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearComposeMaterial3:Z

    return v0
.end method

.method public blacklist wearPrivacyDashboardEnabledReadOnly()Z
    .locals 1

    .line 198
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->init()V

    .line 201
    :cond_0
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/FeatureFlagsImpl;->wearPrivacyDashboardEnabledReadOnly:Z

    return v0
.end method
