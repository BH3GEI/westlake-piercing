.class public final Landroid/service/autofill/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_ACCESSIBILITY_TITLE_FOR_AUGMENTED_AUTOFILL_DROPDOWN:Ljava/lang/String; = "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

.field public static final blacklist FLAG_ADD_LAST_FOCUSED_ID_TO_CLIENT_STATE:Ljava/lang/String; = "android.service.autofill.add_last_focused_id_to_client_state"

.field public static final blacklist FLAG_ADD_LAST_FOCUSED_ID_TO_FILL_EVENT_HISTORY:Ljava/lang/String; = "android.service.autofill.add_last_focused_id_to_fill_event_history"

.field public static final blacklist FLAG_ADD_SESSION_ID_TO_CLIENT_STATE:Ljava/lang/String; = "android.service.autofill.add_session_id_to_client_state"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_DEV_INTEGRATION:Ljava/lang/String; = "android.service.autofill.autofill_credman_dev_integration"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_INTEGRATION:Ljava/lang/String; = "android.service.autofill.autofill_credman_integration"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_INTEGRATION_PHASE2:Ljava/lang/String; = "android.service.autofill.autofill_credman_integration_phase2"

.field public static final blacklist FLAG_AUTOFILL_SESSION_DESTROYED:Ljava/lang/String; = "android.service.autofill.autofill_session_destroyed"

.field public static final blacklist FLAG_AUTOFILL_W_METRICS:Ljava/lang/String; = "android.service.autofill.autofill_w_metrics"

.field public static final blacklist FLAG_FILL_DIALOG_IMPROVEMENTS:Ljava/lang/String; = "android.service.autofill.fill_dialog_improvements"

.field public static final blacklist FLAG_FILL_DIALOG_IMPROVEMENTS_IMPL:Ljava/lang/String; = "android.service.autofill.fill_dialog_improvements_impl"

.field public static final blacklist FLAG_FILL_FIELDS_FROM_CURRENT_SESSION_ONLY:Ljava/lang/String; = "android.service.autofill.fill_fields_from_current_session_only"

.field public static final blacklist FLAG_FIX_GET_AUTOFILL_COMPONENT:Ljava/lang/String; = "android.service.autofill.fix_get_autofill_component"

.field public static final blacklist FLAG_HIGHLIGHT_AUTOFILL_SINGLE_FIELD:Ljava/lang/String; = "android.service.autofill.highlight_autofill_single_field"

.field public static final blacklist FLAG_IMPROVE_FILL_DIALOG_ACONFIG:Ljava/lang/String; = "android.service.autofill.improve_fill_dialog_aconfig"

.field public static final blacklist FLAG_INCLUDE_INVISIBLE_VIEW_GROUP_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "android.service.autofill.include_invisible_view_group_in_assist_structure"

.field public static final blacklist FLAG_METRICS_FIXES:Ljava/lang/String; = "android.service.autofill.metrics_fixes"

.field public static final blacklist FLAG_MULTIPLE_FILL_HISTORY:Ljava/lang/String; = "android.service.autofill.multiple_fill_history"

.field public static final blacklist FLAG_RELAYOUT:Ljava/lang/String; = "android.service.autofill.relayout"

.field public static final blacklist FLAG_RELAYOUT_FIX:Ljava/lang/String; = "android.service.autofill.relayout_fix"

.field public static final blacklist FLAG_REMOTE_FILL_SERVICE_USE_WEAK_REFERENCE:Ljava/lang/String; = "android.service.autofill.remote_fill_service_use_weak_reference"

.field public static final blacklist FLAG_TEST:Ljava/lang/String; = "android.service.autofill.test"

.field public static final blacklist FLAG_TEST_FLAG:Ljava/lang/String; = "android.service.autofill.test_flag"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Landroid/service/autofill/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/service/autofill/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .locals 1

    .line 56
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addAccessibilityTitleForAugmentedAutofillDropdown()Z

    move-result v0

    return v0
.end method

.method public static greylist addLastFocusedIdToClientState()Z
    .locals 1

    .line 62
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addLastFocusedIdToClientState()Z

    move-result v0

    return v0
.end method

.method public static greylist addLastFocusedIdToFillEventHistory()Z
    .locals 1

    .line 68
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addLastFocusedIdToFillEventHistory()Z

    move-result v0

    return v0
.end method

.method public static greylist addSessionIdToClientState()Z
    .locals 1

    .line 74
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->addSessionIdToClientState()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillCredmanDevIntegration()Z
    .locals 1

    .line 80
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillCredmanDevIntegration()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillCredmanIntegration()Z
    .locals 1

    .line 86
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillCredmanIntegration()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillCredmanIntegrationPhase2()Z
    .locals 1

    .line 92
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillCredmanIntegrationPhase2()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillSessionDestroyed()Z
    .locals 1

    .line 98
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillSessionDestroyed()Z

    move-result v0

    return v0
.end method

.method public static greylist autofillWMetrics()Z
    .locals 1

    .line 104
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->autofillWMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist fillDialogImprovements()Z
    .locals 1

    .line 110
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fillDialogImprovements()Z

    move-result v0

    return v0
.end method

.method public static greylist fillDialogImprovementsImpl()Z
    .locals 1

    .line 116
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fillDialogImprovementsImpl()Z

    move-result v0

    return v0
.end method

.method public static greylist fillFieldsFromCurrentSessionOnly()Z
    .locals 1

    .line 122
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fillFieldsFromCurrentSessionOnly()Z

    move-result v0

    return v0
.end method

.method public static greylist fixGetAutofillComponent()Z
    .locals 1

    .line 128
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->fixGetAutofillComponent()Z

    move-result v0

    return v0
.end method

.method public static greylist highlightAutofillSingleField()Z
    .locals 1

    .line 134
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->highlightAutofillSingleField()Z

    move-result v0

    return v0
.end method

.method public static greylist improveFillDialogAconfig()Z
    .locals 1

    .line 140
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->improveFillDialogAconfig()Z

    move-result v0

    return v0
.end method

.method public static greylist includeInvisibleViewGroupInAssistStructure()Z
    .locals 1

    .line 146
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->includeInvisibleViewGroupInAssistStructure()Z

    move-result v0

    return v0
.end method

.method public static greylist metricsFixes()Z
    .locals 1

    .line 152
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->metricsFixes()Z

    move-result v0

    return v0
.end method

.method public static greylist multipleFillHistory()Z
    .locals 1

    .line 158
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->multipleFillHistory()Z

    move-result v0

    return v0
.end method

.method public static greylist relayout()Z
    .locals 1

    .line 164
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->relayout()Z

    move-result v0

    return v0
.end method

.method public static greylist relayoutFix()Z
    .locals 1

    .line 170
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->relayoutFix()Z

    move-result v0

    return v0
.end method

.method public static greylist remoteFillServiceUseWeakReference()Z
    .locals 1

    .line 176
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->remoteFillServiceUseWeakReference()Z

    move-result v0

    return v0
.end method

.method public static greylist test()Z
    .locals 1

    .line 182
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->test()Z

    move-result v0

    return v0
.end method

.method public static greylist testFlag()Z
    .locals 1

    .line 188
    sget-object v0, Landroid/service/autofill/Flags;->FEATURE_FLAGS:Landroid/service/autofill/FeatureFlags;

    invoke-interface {v0}, Landroid/service/autofill/FeatureFlags;->testFlag()Z

    move-result v0

    return v0
.end method
