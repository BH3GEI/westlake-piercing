.class public Lcom/android/input/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/input/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/input/flags/FeatureFlags;",
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
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/input/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/input/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v1, Ljava/util/HashSet;

    const-string v35, "com.android.input.flags.use_cloned_screen_coordinates_as_raw"

    const-string v36, ""

    const-string v2, "com.android.input.flags.a11y_crash_on_inconsistent_event_stream"

    const-string v3, "com.android.input.flags.collect_palm_rejection_quality_metrics"

    const-string v4, "com.android.input.flags.connected_displays_cursor"

    const-string v5, "com.android.input.flags.deprecate_split_touch_apis"

    const-string v6, "com.android.input.flags.deprecate_uiautomation_input_injection"

    const-string v7, "com.android.input.flags.device_associations"

    const-string v8, "com.android.input.flags.disable_reject_touch_on_stylus_hover"

    const-string v9, "com.android.input.flags.disable_touch_input_mapper_pointer_usage"

    const-string v10, "com.android.input.flags.enable_alphabetic_keyboard_wake"

    const-string v11, "com.android.input.flags.enable_button_state_verification"

    const-string v12, "com.android.input.flags.enable_inbound_event_verification"

    const-string v13, "com.android.input.flags.enable_input_event_tracing"

    const-string v14, "com.android.input.flags.enable_input_policy_profile"

    const-string v15, "com.android.input.flags.enable_keyboard_classifier"

    const-string v16, "com.android.input.flags.enable_multi_device_input"

    const-string v17, "com.android.input.flags.enable_multi_device_same_window_stream"

    const-string v18, "com.android.input.flags.enable_outbound_event_verification"

    const-string v19, "com.android.input.flags.enable_per_device_input_latency_metrics"

    const-string v20, "com.android.input.flags.enable_prediction_pruning_via_jerk_thresholding"

    const-string v21, "com.android.input.flags.enable_touchpad_no_focus_change"

    const-string v22, "com.android.input.flags.enable_touchpad_typing_palm_rejection"

    const-string v23, "com.android.input.flags.enable_v2_touchpad_typing_palm_rejection"

    const-string v24, "com.android.input.flags.hide_pointer_indicators_for_secure_windows"

    const-string v25, "com.android.input.flags.include_relative_axis_values_for_captured_touchpads"

    const-string v26, "com.android.input.flags.input_device_view_behavior_api"

    const-string v27, "com.android.input.flags.keyboard_repeat_keys"

    const-string v28, "com.android.input.flags.override_key_behavior_permission_apis"

    const-string v29, "com.android.input.flags.prevent_merging_input_pointer_devices"

    const-string v30, "com.android.input.flags.rate_limit_user_activity_poke_in_dispatcher"

    const-string v31, "com.android.input.flags.remove_input_channel_from_windowstate"

    const-string v32, "com.android.input.flags.rotary_input_telemetry"

    const-string v33, "com.android.input.flags.set_input_device_kernel_wake"

    const-string v34, "com.android.input.flags.show_pointers_for_partial_screenshare"

    filled-new-array/range {v2 .. v36}, [Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/input/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/input/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 267
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist a11yCrashOnInconsistentEventStream()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.input.flags.a11y_crash_on_inconsistent_event_stream"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist collectPalmRejectionQualityMetrics()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.input.flags.collect_palm_rejection_quality_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist connectedDisplaysCursor()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.input.flags.connected_displays_cursor"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateSplitTouchApis()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.input.flags.deprecate_split_touch_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateUiautomationInputInjection()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.input.flags.deprecate_uiautomation_input_injection"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deviceAssociations()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.input.flags.device_associations"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableRejectTouchOnStylusHover()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.input.flags.disable_reject_touch_on_stylus_hover"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableTouchInputMapperPointerUsage()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.input.flags.disable_touch_input_mapper_pointer_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAlphabeticKeyboardWake()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.input.flags.enable_alphabetic_keyboard_wake"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableButtonStateVerification()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.input.flags.enable_button_state_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableInboundEventVerification()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.input.flags.enable_inbound_event_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableInputEventTracing()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.input.flags.enable_input_event_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableInputPolicyProfile()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.input.flags.enable_input_policy_profile"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableKeyboardClassifier()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.input.flags.enable_keyboard_classifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMultiDeviceInput()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.input.flags.enable_multi_device_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableMultiDeviceSameWindowStream()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.input.flags.enable_multi_device_same_window_stream"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableOutboundEventVerification()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.input.flags.enable_outbound_event_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePerDeviceInputLatencyMetrics()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.input.flags.enable_per_device_input_latency_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePredictionPruningViaJerkThresholding()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.input.flags.enable_prediction_pruning_via_jerk_thresholding"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTouchpadNoFocusChange()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.input.flags.enable_touchpad_no_focus_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTouchpadTypingPalmRejection()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.input.flags.enable_touchpad_typing_palm_rejection"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableV2TouchpadTypingPalmRejection()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.input.flags.enable_v2_touchpad_typing_palm_rejection"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    const-string v33, "com.android.input.flags.show_pointers_for_partial_screenshare"

    const-string v34, "com.android.input.flags.use_cloned_screen_coordinates_as_raw"

    const-string v1, "com.android.input.flags.a11y_crash_on_inconsistent_event_stream"

    const-string v2, "com.android.input.flags.collect_palm_rejection_quality_metrics"

    const-string v3, "com.android.input.flags.connected_displays_cursor"

    const-string v4, "com.android.input.flags.deprecate_split_touch_apis"

    const-string v5, "com.android.input.flags.deprecate_uiautomation_input_injection"

    const-string v6, "com.android.input.flags.device_associations"

    const-string v7, "com.android.input.flags.disable_reject_touch_on_stylus_hover"

    const-string v8, "com.android.input.flags.disable_touch_input_mapper_pointer_usage"

    const-string v9, "com.android.input.flags.enable_alphabetic_keyboard_wake"

    const-string v10, "com.android.input.flags.enable_button_state_verification"

    const-string v11, "com.android.input.flags.enable_inbound_event_verification"

    const-string v12, "com.android.input.flags.enable_input_event_tracing"

    const-string v13, "com.android.input.flags.enable_input_policy_profile"

    const-string v14, "com.android.input.flags.enable_keyboard_classifier"

    const-string v15, "com.android.input.flags.enable_multi_device_input"

    const-string v16, "com.android.input.flags.enable_multi_device_same_window_stream"

    const-string v17, "com.android.input.flags.enable_outbound_event_verification"

    const-string v18, "com.android.input.flags.enable_per_device_input_latency_metrics"

    const-string v19, "com.android.input.flags.enable_prediction_pruning_via_jerk_thresholding"

    const-string v20, "com.android.input.flags.enable_touchpad_no_focus_change"

    const-string v21, "com.android.input.flags.enable_touchpad_typing_palm_rejection"

    const-string v22, "com.android.input.flags.enable_v2_touchpad_typing_palm_rejection"

    const-string v23, "com.android.input.flags.hide_pointer_indicators_for_secure_windows"

    const-string v24, "com.android.input.flags.include_relative_axis_values_for_captured_touchpads"

    const-string v25, "com.android.input.flags.input_device_view_behavior_api"

    const-string v26, "com.android.input.flags.keyboard_repeat_keys"

    const-string v27, "com.android.input.flags.override_key_behavior_permission_apis"

    const-string v28, "com.android.input.flags.prevent_merging_input_pointer_devices"

    const-string v29, "com.android.input.flags.rate_limit_user_activity_poke_in_dispatcher"

    const-string v30, "com.android.input.flags.remove_input_channel_from_windowstate"

    const-string v31, "com.android.input.flags.rotary_input_telemetry"

    const-string v32, "com.android.input.flags.set_input_device_kernel_wake"

    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

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
            "Lcom/android/input/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 271
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/input/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/input/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hidePointerIndicatorsForSecureWindows()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.input.flags.hide_pointer_indicators_for_secure_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist includeRelativeAxisValuesForCapturedTouchpads()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.input.flags.include_relative_axis_values_for_captured_touchpads"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist inputDeviceViewBehaviorApi()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.input.flags.input_device_view_behavior_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/input/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/input/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keyboardRepeatKeys()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.input.flags.keyboard_repeat_keys"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist overrideKeyBehaviorPermissionApis()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.input.flags.override_key_behavior_permission_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventMergingInputPointerDevices()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.input.flags.prevent_merging_input_pointer_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rateLimitUserActivityPokeInDispatcher()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.input.flags.rate_limit_user_activity_poke_in_dispatcher"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeInputChannelFromWindowstate()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.input.flags.remove_input_channel_from_windowstate"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rotaryInputTelemetry()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.input.flags.rotary_input_telemetry"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setInputDeviceKernelWake()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.input.flags.set_input_device_kernel_wake"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist showPointersForPartialScreenshare()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.input.flags.show_pointers_for_partial_screenshare"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useClonedScreenCoordinatesAsRaw()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/input/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.input.flags.use_cloned_screen_coordinates_as_raw"

    invoke-virtual {p0, v1, v0}, Lcom/android/input/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
