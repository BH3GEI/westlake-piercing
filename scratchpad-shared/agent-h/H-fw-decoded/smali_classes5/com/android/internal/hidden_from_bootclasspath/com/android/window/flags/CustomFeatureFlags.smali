.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;",
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xe5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.window.flags.activity_embedding_animation_customization_flag"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.activity_embedding_overlay_presentation_flag"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.activity_embedding_support_for_connected_displays"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.allow_disable_activity_record_input_sink"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.allow_hide_scm_button"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.allow_multiple_adjacent_task_fragments"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_capture_activity_snapshot"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.always_update_wallpaper_permission"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.aod_transition"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_async_relayout"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_properties_api"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_refactoring"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_compat_ui_framework"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.app_handle_no_relayout_on_exclusion_change"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.apply_lifecycle_on_pip_change"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.avoid_rebinding_intentionally_disconnected_wallpaper"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_additional_start_modes"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_clear_allowlist_duration"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_improve_real_caller_visibility_check"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_improved_metrics"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_reduce_grace_period"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_send_intent_with_options"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_show_toasts_blocked"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_strict_mode_grace_period"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.bal_strict_mode_ro"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.better_support_non_match_parent_activity"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.cache_window_style"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.camera_compat_for_freeform"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.check_disabled_snapshots_in_task_persister"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.clear_system_vibrator"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.close_to_square_config_includes_status_bar"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.condense_configuration_change_for_simple_mode"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.configurable_font_scale_default"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.cover_display_opt_in"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.defer_predictive_animation_if_no_snapshot"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.delegate_unhandled_drags"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.delete_capture_display"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.density_390_api"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.disable_non_resizable_app_snap_resizing"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.disable_opt_out_edge_to_edge"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.edge_to_edge_by_default"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_accessible_custom_headers"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_activity_embedding_support_for_connected_displays"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_app_header_with_task_density"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_buffer_transform_hint_from_display"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_bug_fixes_for_secondary_display"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_camera_compat_track_task_and_app_bugfix"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_caption_compat_inset_conversion"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_caption_compat_inset_force_consumption"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_caption_compat_inset_force_consumption_always"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_cascading_windows"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_compat_ui_visibility_status"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_compatui_sysui_launcher"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_dnd"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_pip"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_connected_displays_window_drag"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions_bugfix"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_transitions"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_app_launch_transitions_bugfix"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_close_shortcut_bugfix"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_indicator_in_separate_thread_bugfix"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_mode_through_dev_option"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_recents_transitions_corners_bugfix"

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_system_dialogs_transitions"

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_tab_tearing_minimize_animation_bugfix"

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_taskbar_on_freeform_displays"

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_trampoline_close_animation_bugfix"

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_wallpaper_activity_for_system_user"

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_handle_education"

    const/16 v3, 0x50

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_to_web"

    const/16 v3, 0x51

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_to_web_education"

    const/16 v3, 0x52

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_app_to_web_education_integration"

    const/16 v3, 0x53

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_back_navigation"

    const/16 v3, 0x54

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_enter_transition_bugfix"

    const/16 v3, 0x55

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_enter_transitions"

    const/16 v3, 0x56

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_exit_by_minimize_transition_bugfix"

    const/16 v3, 0x57

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_exit_transitions"

    const/16 v3, 0x58

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_exit_transitions_bugfix"

    const/16 v3, 0x59

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_hsum"

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_mode"

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_multi_instance_features"

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_persistence"

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_pip"

    const/16 v3, 0x60

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    const/16 v3, 0x61

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_scvh_cache_bug_fix"

    const/16 v3, 0x62

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    const/16 v3, 0x63

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_task_limit"

    const/16 v3, 0x64

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    const/16 v3, 0x65

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_transitions"

    const/16 v3, 0x66

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    const/16 v3, 0x67

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_device_state_auto_rotate_setting_logging"

    const/16 v3, 0x68

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_device_state_auto_rotate_setting_refactor"

    const/16 v3, 0x69

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_disconnect_interaction"

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_focus_in_shell_transitions"

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_reconnect_interaction"

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_display_windowing_mode_switching"

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drag_resize_set_up_in_bg_thread"

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_drag_to_maximize"

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_full_screen_window_on_removing_split_screen_stage_bugfix"

    const/16 v3, 0x70

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_fully_immersive_in_desktop"

    const/16 v3, 0x71

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_handle_input_fix"

    const/16 v3, 0x72

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_hold_to_drag_app_handle"

    const/16 v3, 0x73

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_minimize_button"

    const/16 v3, 0x74

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_modals_fullscreen_with_permission"

    const/16 v3, 0x75

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_move_to_next_display_shortcut"

    const/16 v3, 0x76

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multi_display_split"

    const/16 v3, 0x77

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multiple_desktops_backend"

    const/16 v3, 0x78

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_multiple_desktops_frontend"

    const/16 v3, 0x79

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_non_default_display_split"

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_opaque_background_for_transparent_windows"

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_per_display_desktop_wallpaper_activity"

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_per_display_package_context_cache_in_statusbar_notif"

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_presentation_for_connected_displays"

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_quickswitch_desktop_split_bugfix"

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_resizing_metrics"

    const/16 v3, 0x80

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_restore_to_previous_size_from_desktop_immersive"

    const/16 v3, 0x81

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_start_launch_transition_from_taskbar_bugfix"

    const/16 v3, 0x82

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_task_resizing_keyboard_shortcuts"

    const/16 v3, 0x83

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_task_stack_observer_in_shell"

    const/16 v3, 0x84

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_taskbar_connected_displays"

    const/16 v3, 0x85

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_taskbar_overflow"

    const/16 v3, 0x86

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_themed_app_headers"

    const/16 v3, 0x87

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_tile_resizing"

    const/16 v3, 0x88

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_top_visible_root_task_per_user_tracking"

    const/16 v3, 0x89

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_window_context_resources_update_on_config_change"

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_edge_drag_resize"

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_scaled_resizing"

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enable_windowing_transition_handlers_observers"

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enforce_edge_to_edge"

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ensure_keyguard_does_transition_starting"

    const/16 v3, 0x90

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ensure_wallpaper_in_transitions"

    const/16 v3, 0x91

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ensure_wallpaper_in_wear_transitions"

    const/16 v3, 0x92

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.enter_desktop_by_default_on_freeform_displays"

    const/16 v3, 0x93

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.exclude_caption_from_app_bounds"

    const/16 v3, 0x94

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.exclude_drawing_app_theme_snapshot_from_lock"

    const/16 v3, 0x95

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    const/16 v3, 0x96

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_hide_overlay_api"

    const/16 v3, 0x97

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.fix_layout_existing_task"

    const/16 v3, 0x98

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.get_dimmer_on_closing"

    const/16 v3, 0x99

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ignore_aspect_ratio_restrictions_for_resizeable_freeform_activities"

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.ignore_corner_radius_and_shadows"

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.include_top_transparent_fullscreen_task_in_desktop_heuristic"

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.insets_decoupled_configuration"

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.jank_api"

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.keep_app_window_hide_while_locked"

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.keyguard_going_away_timeout"

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.letterbox_background_wallpaper"

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.movable_cutout_configuration"

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.move_animation_options_to_change"

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.move_to_external_display_shortcut"

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.multi_crop"

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.nav_bar_transparent_by_default"

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.no_consecutive_visibility_events"

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.no_duplicate_surface_destroyed_events"

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.no_visibility_event_on_display_state_change"

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.normalize_home_intent"

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.offload_color_extraction"

    const/16 v3, 0xab

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.port_window_size_animation"

    const/16 v3, 0xac

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_default_enable_sdk_36"

    const/16 v3, 0xad

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_priority_system_navigation_observer"

    const/16 v3, 0xae

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_swipe_edge_none_api"

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_system_override_callback"

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_three_button_nav"

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.predictive_back_timestamp_api"

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.process_priority_policy_for_multi_window_mode"

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.record_task_snapshots_before_shutdown"

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reduce_changed_exclusion_rects_msgs"

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reduce_keyguard_transitions"

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.relative_insets"

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.release_snapshot_aggressively"

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.release_user_aspect_ratio_wm"

    const/16 v3, 0xba

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.remove_activity_starter_dream_callback"

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.remove_defer_hiding_client"

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.reparent_window_token_api"

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.respect_animation_clip"

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.respect_non_top_visible_fixed_orientation"

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.respect_orientation_change_for_unresizeable"

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.safe_region_letterboxing"

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.scheduling_for_notification_shade"

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.screen_recording_callbacks"

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.scrolling_from_letterbox"

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.sdk_desired_present_time"

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.set_sc_properties_in_client"

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_app_handle_large_screens"

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_desktop_experience_dev_option"

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.show_desktop_windowing_dev_option"

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.skip_compat_ui_education_in_desktop_mode"

    const/16 v3, 0xca

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.supports_drag_assistant_to_multiwindow"

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.supports_multi_instance_system_ui"

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.surface_control_input_receiver"

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.surface_trusted_overlay"

    const/16 v3, 0xce

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.sync_screen_capture"

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.system_ui_post_animation_end"

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.task_fragment_system_organizer_flag"

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.touch_pass_through_opt_in"

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.track_system_ui_context_before_wms"

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.transit_ready_tracking"

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.transit_tracker_plumbing"

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.trusted_presentation_listener_for_window"

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.unify_back_navigation_transition"

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.universal_resizable_by_default"

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.untrusted_embedding_any_app_permission"

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.untrusted_embedding_state_sharing"

    const/16 v3, 0xda

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.update_dims_when_window_shown"

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.use_rt_frame_callback_for_splash_screen_transfer"

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.use_self_sync_transaction_for_layer"

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.use_tasks_dim_only"

    const/16 v3, 0xde

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.vdm_force_app_universal_resizable_api"

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.wait_for_transition_on_display_switch"

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.wallpaper_offset_async"

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    const-string v2, "com.android.window.flags.wlinfo_oncreate"

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    const-string v2, ""

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    .line 1866
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    .line 1625
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist activityEmbeddingAnimationCustomizationFlag()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda115;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda115;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_animation_customization_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist activityEmbeddingInteractiveDividerFlag()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda212;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda212;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist activityEmbeddingOverlayPresentationFlag()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda222;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda222;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_overlay_presentation_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist activityEmbeddingSupportForConnectedDisplays()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.window.flags.activity_embedding_support_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowDisableActivityRecordInputSink()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda177;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda177;-><init>()V

    const-string v1, "com.android.window.flags.allow_disable_activity_record_input_sink"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowHideScmButton()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.window.flags.allow_hide_scm_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowMultipleAdjacentTaskFragments()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.window.flags.allow_multiple_adjacent_task_fragments"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowsScreenSizeDecoupledFromStatusBarAndCutout()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda190;-><init>()V

    const-string v1, "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysCaptureActivitySnapshot()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.window.flags.always_capture_activity_snapshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysDrawMagnificationFullscreenBorder()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysUpdateWallpaperPermission()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda127;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda127;-><init>()V

    const-string v1, "com.android.window.flags.always_update_wallpaper_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aodTransition()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.window.flags.aod_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatAsyncRelayout()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda218;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda218;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_async_relayout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatPropertiesApi()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_properties_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatRefactoring()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda134;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda134;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_refactoring"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appCompatUiFramework()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda125;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda125;-><init>()V

    const-string v1, "com.android.window.flags.app_compat_ui_framework"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist appHandleNoRelayoutOnExclusionChange()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.window.flags.app_handle_no_relayout_on_exclusion_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist applyLifecycleOnPipChange()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda204;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda204;-><init>()V

    const-string v1, "com.android.window.flags.apply_lifecycle_on_pip_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avoidRebindingIntentionallyDisconnectedWallpaper()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda169;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda169;-><init>()V

    const-string v1, "com.android.window.flags.avoid_rebinding_intentionally_disconnected_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balAdditionalStartModes()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.window.flags.bal_additional_start_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balClearAllowlistDuration()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda227;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda227;-><init>()V

    const-string v1, "com.android.window.flags.bal_clear_allowlist_duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balDontBringExistingBackgroundTaskStackToFg()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balImproveRealCallerVisibilityCheck()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda135;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda135;-><init>()V

    const-string v1, "com.android.window.flags.bal_improve_real_caller_visibility_check"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balImprovedMetrics()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.window.flags.bal_improved_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balReduceGracePeriod()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.window.flags.bal_reduce_grace_period"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balRequireOptInByPendingIntentCreator()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda146;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda146;-><init>()V

    const-string v1, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balSendIntentWithOptions()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.window.flags.bal_send_intent_with_options"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balShowToastsBlocked()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda133;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda133;-><init>()V

    const-string v1, "com.android.window.flags.bal_show_toasts_blocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balStrictModeGracePeriod()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda144;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda144;-><init>()V

    const-string v1, "com.android.window.flags.bal_strict_mode_grace_period"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist balStrictModeRo()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda196;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda196;-><init>()V

    const-string v1, "com.android.window.flags.bal_strict_mode_ro"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist betterSupportNonMatchParentActivity()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.window.flags.better_support_non_match_parent_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cacheWindowStyle()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.window.flags.cache_window_style"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraCompatForFreeform()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda117;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda117;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_for_freeform"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist cameraCompatFullscreenPickSameTaskActivity()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkDisabledSnapshotsInTaskPersister()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.window.flags.check_disabled_snapshots_in_task_persister"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist clearSystemVibrator()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda157;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda157;-><init>()V

    const-string v1, "com.android.window.flags.clear_system_vibrator"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist closeToSquareConfigIncludesStatusBar()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.window.flags.close_to_square_config_includes_status_bar"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist condenseConfigurationChangeForSimpleMode()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.window.flags.condense_configuration_change_for_simple_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist configurableFontScaleDefault()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;-><init>()V

    const-string v1, "com.android.window.flags.configurable_font_scale_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist coverDisplayOptIn()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda118;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda118;-><init>()V

    const-string v1, "com.android.window.flags.cover_display_opt_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deferPredictiveAnimationIfNoSnapshot()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda131;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda131;-><init>()V

    const-string v1, "com.android.window.flags.defer_predictive_animation_if_no_snapshot"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delayNotificationToMagnificationWhenRecentsWindowToFrontTransition()Z
    .locals 2

    .line 316
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist delegateUnhandledDrags()Z
    .locals 2

    .line 323
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda116;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda116;-><init>()V

    const-string v1, "com.android.window.flags.delegate_unhandled_drags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deleteCaptureDisplay()Z
    .locals 2

    .line 330
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.window.flags.delete_capture_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist density390Api()Z
    .locals 2

    .line 337
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda220;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda220;-><init>()V

    const-string v1, "com.android.window.flags.density_390_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableNonResizableAppSnapResizing()Z
    .locals 2

    .line 344
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;-><init>()V

    const-string v1, "com.android.window.flags.disable_non_resizable_app_snap_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableOptOutEdgeToEdge()Z
    .locals 2

    .line 351
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda114;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda114;-><init>()V

    const-string v1, "com.android.window.flags.disable_opt_out_edge_to_edge"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist doNotCheckIntersectionWhenNonMagnifiableWindowTransitions()Z
    .locals 2

    .line 358
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist edgeToEdgeByDefault()Z
    .locals 2

    .line 365
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda164;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda164;-><init>()V

    const-string v1, "com.android.window.flags.edge_to_edge_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAccessibleCustomHeaders()Z
    .locals 2

    .line 372
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.window.flags.enable_accessible_custom_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableActivityEmbeddingSupportForConnectedDisplays()Z
    .locals 2

    .line 379
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda171;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda171;-><init>()V

    const-string v1, "com.android.window.flags.enable_activity_embedding_support_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableAppHeaderWithTaskDensity()Z
    .locals 2

    .line 386
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda159;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda159;-><init>()V

    const-string v1, "com.android.window.flags.enable_app_header_with_task_density"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBufferTransformHintFromDisplay()Z
    .locals 2

    .line 393
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda195;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda195;-><init>()V

    const-string v1, "com.android.window.flags.enable_buffer_transform_hint_from_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBugFixesForSecondaryDisplay()Z
    .locals 2

    .line 400
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.window.flags.enable_bug_fixes_for_secondary_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatForDesktopWindowing()Z
    .locals 2

    .line 407
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatForDesktopWindowingOptOut()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda136;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda136;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCameraCompatTrackTaskAndAppBugfix()Z
    .locals 2

    .line 421
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.window.flags.enable_camera_compat_track_task_and_app_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCaptionCompatInsetConversion()Z
    .locals 2

    .line 428
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda182;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda182;-><init>()V

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_conversion"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCaptionCompatInsetForceConsumption()Z
    .locals 2

    .line 435
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda124;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda124;-><init>()V

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCaptionCompatInsetForceConsumptionAlways()Z
    .locals 2

    .line 442
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda225;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda225;-><init>()V

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption_always"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCascadingWindows()Z
    .locals 2

    .line 449
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda126;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda126;-><init>()V

    const-string v1, "com.android.window.flags.enable_cascading_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCompatUiVisibilityStatus()Z
    .locals 2

    .line 456
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda203;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda203;-><init>()V

    const-string v1, "com.android.window.flags.enable_compat_ui_visibility_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableCompatuiSysuiLauncher()Z
    .locals 2

    .line 463
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;-><init>()V

    const-string v1, "com.android.window.flags.enable_compatui_sysui_launcher"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysDnd()Z
    .locals 2

    .line 470
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_dnd"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysPip()Z
    .locals 2

    .line 477
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda121;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda121;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_pip"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableConnectedDisplaysWindowDrag()Z
    .locals 2

    .line 484
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda122;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda122;-><init>()V

    const-string v1, "com.android.window.flags.enable_connected_displays_window_drag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchAlttabTransitions()Z
    .locals 2

    .line 491
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchAlttabTransitionsBugfix()Z
    .locals 2

    .line 498
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchTransitions()Z
    .locals 2

    .line 505
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda129;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda129;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopAppLaunchTransitionsBugfix()Z
    .locals 2

    .line 512
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda200;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda200;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopCloseShortcutBugfix()Z
    .locals 2

    .line 519
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda180;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda180;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_close_shortcut_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopIndicatorInSeparateThreadBugfix()Z
    .locals 2

    .line 526
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda183;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda183;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_indicator_in_separate_thread_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopModeThroughDevOption()Z
    .locals 2

    .line 533
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_mode_through_dev_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopRecentsTransitionsCornersBugfix()Z
    .locals 2

    .line 540
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_recents_transitions_corners_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopSystemDialogsTransitions()Z
    .locals 2

    .line 547
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_system_dialogs_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTabTearingMinimizeAnimationBugfix()Z
    .locals 2

    .line 554
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda191;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda191;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_tab_tearing_minimize_animation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTaskbarOnFreeformDisplays()Z
    .locals 2

    .line 561
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_taskbar_on_freeform_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopTrampolineCloseAnimationBugfix()Z
    .locals 2

    .line 568
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_trampoline_close_animation_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWallpaperActivityForSystemUser()Z
    .locals 2

    .line 575
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda149;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda149;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_wallpaper_activity_for_system_user"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppHandleEducation()Z
    .locals 2

    .line 582
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_handle_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppToWeb()Z
    .locals 2

    .line 589
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda179;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda179;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppToWebEducation()Z
    .locals 2

    .line 596
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda215;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda215;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingAppToWebEducationIntegration()Z
    .locals 2

    .line 603
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education_integration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingBackNavigation()Z
    .locals 2

    .line 610
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_back_navigation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingEnterTransitionBugfix()Z
    .locals 2

    .line 617
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda209;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda209;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transition_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingEnterTransitions()Z
    .locals 2

    .line 624
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingExitByMinimizeTransitionBugfix()Z
    .locals 2

    .line 631
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_by_minimize_transition_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingExitTransitions()Z
    .locals 2

    .line 638
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda168;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda168;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingExitTransitionsBugfix()Z
    .locals 2

    .line 645
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingHsum()Z
    .locals 2

    .line 652
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda197;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda197;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_hsum"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingImmersiveHandleHiding()Z
    .locals 2

    .line 659
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingModalsPolicy()Z
    .locals 2

    .line 666
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda145;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda145;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingMode()Z
    .locals 2

    .line 673
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda216;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda216;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingMultiInstanceFeatures()Z
    .locals 2

    .line 680
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_multi_instance_features"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingPersistence()Z
    .locals 2

    .line 687
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda174;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda174;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_persistence"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingPip()Z
    .locals 2

    .line 694
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda120;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda120;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_pip"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingQuickSwitch()Z
    .locals 2

    .line 701
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingScvhCacheBugFix()Z
    .locals 2

    .line 708
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_scvh_cache_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingSizeConstraints()Z
    .locals 2

    .line 715
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda198;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda198;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingTaskLimit()Z
    .locals 2

    .line 722
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_task_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingTaskbarRunningApps()Z
    .locals 2

    .line 729
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda224;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda224;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingTransitions()Z
    .locals 2

    .line 736
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDesktopWindowingWallpaperActivity()Z
    .locals 2

    .line 743
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda213;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda213;-><init>()V

    const-string v1, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDeviceStateAutoRotateSettingLogging()Z
    .locals 2

    .line 750
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDeviceStateAutoRotateSettingRefactor()Z
    .locals 2

    .line 757
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda150;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda150;-><init>()V

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayDisconnectInteraction()Z
    .locals 2

    .line 764
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda161;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda161;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_disconnect_interaction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayFocusInShellTransitions()Z
    .locals 2

    .line 771
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_focus_in_shell_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayReconnectInteraction()Z
    .locals 2

    .line 778
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda214;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda214;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_reconnect_interaction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDisplayWindowingModeSwitching()Z
    .locals 2

    .line 785
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.window.flags.enable_display_windowing_mode_switching"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDragResizeSetUpInBgThread()Z
    .locals 2

    .line 792
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.window.flags.enable_drag_resize_set_up_in_bg_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDragToMaximize()Z
    .locals 2

    .line 799
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda175;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda175;-><init>()V

    const-string v1, "com.android.window.flags.enable_drag_to_maximize"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFullScreenWindowOnRemovingSplitScreenStageBugfix()Z
    .locals 2

    .line 806
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.window.flags.enable_full_screen_window_on_removing_split_screen_stage_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableFullyImmersiveInDesktop()Z
    .locals 2

    .line 813
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;-><init>()V

    const-string v1, "com.android.window.flags.enable_fully_immersive_in_desktop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHandleInputFix()Z
    .locals 2

    .line 820
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda167;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda167;-><init>()V

    const-string v1, "com.android.window.flags.enable_handle_input_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHoldToDragAppHandle()Z
    .locals 2

    .line 827
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda207;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda207;-><init>()V

    const-string v1, "com.android.window.flags.enable_hold_to_drag_app_handle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMinimizeButton()Z
    .locals 2

    .line 834
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.window.flags.enable_minimize_button"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableModalsFullscreenWithPermission()Z
    .locals 2

    .line 841
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;-><init>()V

    const-string v1, "com.android.window.flags.enable_modals_fullscreen_with_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMoveToNextDisplayShortcut()Z
    .locals 2

    .line 848
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda172;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda172;-><init>()V

    const-string v1, "com.android.window.flags.enable_move_to_next_display_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultiDisplaySplit()Z
    .locals 2

    .line 855
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda201;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda201;-><init>()V

    const-string v1, "com.android.window.flags.enable_multi_display_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleDesktopsBackend()Z
    .locals 2

    .line 862
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda160;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda160;-><init>()V

    const-string v1, "com.android.window.flags.enable_multiple_desktops_backend"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableMultipleDesktopsFrontend()Z
    .locals 2

    .line 869
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda147;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda147;-><init>()V

    const-string v1, "com.android.window.flags.enable_multiple_desktops_frontend"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNonDefaultDisplaySplit()Z
    .locals 2

    .line 876
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.window.flags.enable_non_default_display_split"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableOpaqueBackgroundForTransparentWindows()Z
    .locals 2

    .line 883
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.window.flags.enable_opaque_background_for_transparent_windows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePerDisplayDesktopWallpaperActivity()Z
    .locals 2

    .line 890
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda166;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda166;-><init>()V

    const-string v1, "com.android.window.flags.enable_per_display_desktop_wallpaper_activity"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePerDisplayPackageContextCacheInStatusbarNotif()Z
    .locals 2

    .line 897
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.window.flags.enable_per_display_package_context_cache_in_statusbar_notif"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enablePresentationForConnectedDisplays()Z
    .locals 2

    .line 904
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda163;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda163;-><init>()V

    const-string v1, "com.android.window.flags.enable_presentation_for_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableQuickswitchDesktopSplitBugfix()Z
    .locals 2

    .line 911
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.window.flags.enable_quickswitch_desktop_split_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableResizingMetrics()Z
    .locals 2

    .line 918
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda154;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda154;-><init>()V

    const-string v1, "com.android.window.flags.enable_resizing_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableRestoreToPreviousSizeFromDesktopImmersive()Z
    .locals 2

    .line 925
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.window.flags.enable_restore_to_previous_size_from_desktop_immersive"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableStartLaunchTransitionFromTaskbarBugfix()Z
    .locals 2

    .line 932
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda187;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda187;-><init>()V

    const-string v1, "com.android.window.flags.enable_start_launch_transition_from_taskbar_bugfix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskResizingKeyboardShortcuts()Z
    .locals 2

    .line 939
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda132;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda132;-><init>()V

    const-string v1, "com.android.window.flags.enable_task_resizing_keyboard_shortcuts"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskStackObserverInShell()Z
    .locals 2

    .line 946
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.window.flags.enable_task_stack_observer_in_shell"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskbarConnectedDisplays()Z
    .locals 2

    .line 953
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda210;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda210;-><init>()V

    const-string v1, "com.android.window.flags.enable_taskbar_connected_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTaskbarOverflow()Z
    .locals 2

    .line 960
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda151;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda151;-><init>()V

    const-string v1, "com.android.window.flags.enable_taskbar_overflow"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableThemedAppHeaders()Z
    .locals 2

    .line 967
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.window.flags.enable_themed_app_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTileResizing()Z
    .locals 2

    .line 974
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda208;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda208;-><init>()V

    const-string v1, "com.android.window.flags.enable_tile_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableTopVisibleRootTaskPerUserTracking()Z
    .locals 2

    .line 981
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;-><init>()V

    const-string v1, "com.android.window.flags.enable_top_visible_root_task_per_user_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowContextResourcesUpdateOnConfigChange()Z
    .locals 2

    .line 988
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.window.flags.enable_window_context_resources_update_on_config_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingDynamicInitialBounds()Z
    .locals 2

    .line 995
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingEdgeDragResize()Z
    .locals 2

    .line 1002
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda205;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda205;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_edge_drag_resize"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingScaledResizing()Z
    .locals 2

    .line 1009
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda206;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda206;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_scaled_resizing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableWindowingTransitionHandlersObservers()Z
    .locals 2

    .line 1016
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda162;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda162;-><init>()V

    const-string v1, "com.android.window.flags.enable_windowing_transition_handlers_observers"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enforceEdgeToEdge()Z
    .locals 2

    .line 1023
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda181;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda181;-><init>()V

    const-string v1, "com.android.window.flags.enforce_edge_to_edge"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureKeyguardDoesTransitionStarting()Z
    .locals 2

    .line 1030
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;-><init>()V

    const-string v1, "com.android.window.flags.ensure_keyguard_does_transition_starting"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureWallpaperInTransitions()Z
    .locals 2

    .line 1037
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.window.flags.ensure_wallpaper_in_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ensureWallpaperInWearTransitions()Z
    .locals 2

    .line 1044
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda140;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda140;-><init>()V

    const-string v1, "com.android.window.flags.ensure_wallpaper_in_wear_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enterDesktopByDefaultOnFreeformDisplays()Z
    .locals 2

    .line 1051
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.window.flags.enter_desktop_by_default_on_freeform_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist excludeCaptionFromAppBounds()Z
    .locals 2

    .line 1058
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda219;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda219;-><init>()V

    const-string v1, "com.android.window.flags.exclude_caption_from_app_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist excludeDrawingAppThemeSnapshotFromLock()Z
    .locals 2

    .line 1065
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda142;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda142;-><init>()V

    const-string v1, "com.android.window.flags.exclude_drawing_app_theme_snapshot_from_lock"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fifoPriorityForMajorUiProcesses()Z
    .locals 2

    .line 1072
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda184;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda184;-><init>()V

    const-string v1, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixHideOverlayApi()Z
    .locals 2

    .line 1079
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.window.flags.fix_hide_overlay_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixLayoutExistingTask()Z
    .locals 2

    .line 1086
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.window.flags.fix_layout_existing_task"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getDimmerOnClosing()Z
    .locals 2

    .line 1093
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.window.flags.get_dimmer_on_closing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1633
    const/16 v0, 0xe4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.window.flags.activity_embedding_animation_customization_flag"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.activity_embedding_interactive_divider_flag"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.activity_embedding_overlay_presentation_flag"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.activity_embedding_support_for_connected_displays"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.allow_disable_activity_record_input_sink"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.allow_hide_scm_button"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.allow_multiple_adjacent_task_fragments"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.allows_screen_size_decoupled_from_status_bar_and_cutout"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_capture_activity_snapshot"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_draw_magnification_fullscreen_border"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.always_update_wallpaper_permission"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.aod_transition"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_async_relayout"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_properties_api"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_refactoring"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_compat_ui_framework"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.app_handle_no_relayout_on_exclusion_change"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.apply_lifecycle_on_pip_change"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.avoid_rebinding_intentionally_disconnected_wallpaper"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_additional_start_modes"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_clear_allowlist_duration"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_dont_bring_existing_background_task_stack_to_fg"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_improve_real_caller_visibility_check"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_improved_metrics"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_reduce_grace_period"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_require_opt_in_by_pending_intent_creator"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_respect_app_switch_state_when_check_bound_by_foreground_uid"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_send_intent_with_options"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_show_toasts_blocked"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_strict_mode_grace_period"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.bal_strict_mode_ro"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.better_support_non_match_parent_activity"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.cache_window_style"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.camera_compat_for_freeform"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.camera_compat_fullscreen_pick_same_task_activity"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.check_disabled_snapshots_in_task_persister"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.clear_system_vibrator"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.close_to_square_config_includes_status_bar"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.condense_configuration_change_for_simple_mode"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.configurable_font_scale_default"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.cover_display_opt_in"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.defer_predictive_animation_if_no_snapshot"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.delay_notification_to_magnification_when_recents_window_to_front_transition"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.delegate_unhandled_drags"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.delete_capture_display"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.density_390_api"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.disable_non_resizable_app_snap_resizing"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.disable_opt_out_edge_to_edge"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.do_not_check_intersection_when_non_magnifiable_window_transitions"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.edge_to_edge_by_default"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_accessible_custom_headers"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_activity_embedding_support_for_connected_displays"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_app_header_with_task_density"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_buffer_transform_hint_from_display"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_bug_fixes_for_secondary_display"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_for_desktop_windowing_opt_out"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_camera_compat_track_task_and_app_bugfix"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_conversion"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_caption_compat_inset_force_consumption_always"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_cascading_windows"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_compat_ui_visibility_status"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_compatui_sysui_launcher"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_dnd"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_pip"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_connected_displays_window_drag"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_alttab_transitions_bugfix"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_app_launch_transitions_bugfix"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_close_shortcut_bugfix"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_indicator_in_separate_thread_bugfix"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_mode_through_dev_option"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_recents_transitions_corners_bugfix"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_system_dialogs_transitions"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_tab_tearing_minimize_animation_bugfix"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_taskbar_on_freeform_displays"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_trampoline_close_animation_bugfix"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_wallpaper_activity_for_system_user"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_handle_education"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_app_to_web_education_integration"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_back_navigation"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transition_bugfix"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_enter_transitions"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_by_minimize_transition_bugfix"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_exit_transitions_bugfix"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_hsum"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_immersive_handle_hiding"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_modals_policy"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_mode"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_multi_instance_features"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_persistence"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_pip"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_quick_switch"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_scvh_cache_bug_fix"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_size_constraints"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_task_limit"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_taskbar_running_apps"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_transitions"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_desktop_windowing_wallpaper_activity"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_logging"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_device_state_auto_rotate_setting_refactor"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_disconnect_interaction"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_focus_in_shell_transitions"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_reconnect_interaction"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_display_windowing_mode_switching"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drag_resize_set_up_in_bg_thread"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_drag_to_maximize"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_full_screen_window_on_removing_split_screen_stage_bugfix"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_fully_immersive_in_desktop"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_handle_input_fix"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_hold_to_drag_app_handle"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_minimize_button"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_modals_fullscreen_with_permission"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_move_to_next_display_shortcut"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multi_display_split"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multiple_desktops_backend"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_multiple_desktops_frontend"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_non_default_display_split"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_opaque_background_for_transparent_windows"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_per_display_desktop_wallpaper_activity"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_per_display_package_context_cache_in_statusbar_notif"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_presentation_for_connected_displays"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_quickswitch_desktop_split_bugfix"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_resizing_metrics"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_restore_to_previous_size_from_desktop_immersive"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_start_launch_transition_from_taskbar_bugfix"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_task_resizing_keyboard_shortcuts"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_task_stack_observer_in_shell"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_taskbar_connected_displays"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_taskbar_overflow"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_themed_app_headers"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_tile_resizing"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_top_visible_root_task_per_user_tracking"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_window_context_resources_update_on_config_change"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_dynamic_initial_bounds"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_edge_drag_resize"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_scaled_resizing"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enable_windowing_transition_handlers_observers"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enforce_edge_to_edge"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ensure_keyguard_does_transition_starting"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ensure_wallpaper_in_transitions"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ensure_wallpaper_in_wear_transitions"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.enter_desktop_by_default_on_freeform_displays"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.exclude_caption_from_app_bounds"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.exclude_drawing_app_theme_snapshot_from_lock"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fifo_priority_for_major_ui_processes"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_hide_overlay_api"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.fix_layout_existing_task"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.get_dimmer_on_closing"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ignore_aspect_ratio_restrictions_for_resizeable_freeform_activities"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.ignore_corner_radius_and_shadows"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.include_top_transparent_fullscreen_task_in_desktop_heuristic"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.insets_decoupled_configuration"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.jank_api"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.keep_app_window_hide_while_locked"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.keyguard_going_away_timeout"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.letterbox_background_wallpaper"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.movable_cutout_configuration"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.move_animation_options_to_change"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.move_to_external_display_shortcut"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.multi_crop"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.nav_bar_transparent_by_default"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.no_consecutive_visibility_events"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.no_duplicate_surface_destroyed_events"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.no_visibility_event_on_display_state_change"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.normalize_home_intent"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.offload_color_extraction"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.port_window_size_animation"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_default_enable_sdk_36"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_priority_system_navigation_observer"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_swipe_edge_none_api"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_system_override_callback"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_three_button_nav"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.predictive_back_timestamp_api"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.process_priority_policy_for_multi_window_mode"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.record_task_snapshots_before_shutdown"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reduce_changed_exclusion_rects_msgs"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reduce_keyguard_transitions"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.relative_insets"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.release_snapshot_aggressively"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.release_user_aspect_ratio_wm"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.remove_activity_starter_dream_callback"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.remove_defer_hiding_client"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.reparent_window_token_api"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.respect_animation_clip"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.respect_non_top_visible_fixed_orientation"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.respect_orientation_change_for_unresizeable"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.safe_region_letterboxing"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.scheduling_for_notification_shade"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.screen_recording_callbacks"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.scrolling_from_letterbox"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.sdk_desired_present_time"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.set_sc_properties_in_client"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_app_handle_large_screens"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_desktop_experience_dev_option"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.show_desktop_windowing_dev_option"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.skip_compat_ui_education_in_desktop_mode"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.supports_drag_assistant_to_multiwindow"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.supports_multi_instance_system_ui"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.surface_control_input_receiver"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.surface_trusted_overlay"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.sync_screen_capture"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.system_ui_post_animation_end"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.task_fragment_system_organizer_flag"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.touch_pass_through_opt_in"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.track_system_ui_context_before_wms"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.transit_ready_tracking"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.transit_tracker_plumbing"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.trusted_presentation_listener_for_window"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.unify_back_navigation_transition"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.universal_resizable_by_default"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.untrusted_embedding_any_app_permission"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.untrusted_embedding_state_sharing"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.update_dims_when_window_shown"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.use_rt_frame_callback_for_splash_screen_transfer"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.use_self_sync_transaction_for_layer"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.use_tasks_dim_only"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.vdm_force_app_universal_resizable_api"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.wait_for_transition_on_display_switch"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.wallpaper_offset_async"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "com.android.window.flags.wlinfo_oncreate"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 1629
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreAspectRatioRestrictionsForResizeableFreeformActivities()Z
    .locals 2

    .line 1100
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.window.flags.ignore_aspect_ratio_restrictions_for_resizeable_freeform_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreCornerRadiusAndShadows()Z
    .locals 2

    .line 1107
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.window.flags.ignore_corner_radius_and_shadows"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeTopTransparentFullscreenTaskInDesktopHeuristic()Z
    .locals 2

    .line 1114
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda176;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda176;-><init>()V

    const-string v1, "com.android.window.flags.include_top_transparent_fullscreen_task_in_desktop_heuristic"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist insetsDecoupledConfiguration()Z
    .locals 2

    .line 1121
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda128;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda128;-><init>()V

    const-string v1, "com.android.window.flags.insets_decoupled_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 1616
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    const/4 v0, 0x1

    return v0

    .line 1620
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist jankApi()Z
    .locals 2

    .line 1128
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda217;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda217;-><init>()V

    const-string v1, "com.android.window.flags.jank_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keepAppWindowHideWhileLocked()Z
    .locals 2

    .line 1135
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda221;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda221;-><init>()V

    const-string v1, "com.android.window.flags.keep_app_window_hide_while_locked"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyguardGoingAwayTimeout()Z
    .locals 2

    .line 1142
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda185;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda185;-><init>()V

    const-string v1, "com.android.window.flags.keyguard_going_away_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist letterboxBackgroundWallpaper()Z
    .locals 2

    .line 1149
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda223;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda223;-><init>()V

    const-string v1, "com.android.window.flags.letterbox_background_wallpaper"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist movableCutoutConfiguration()Z
    .locals 2

    .line 1156
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.window.flags.movable_cutout_configuration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveAnimationOptionsToChange()Z
    .locals 2

    .line 1163
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.window.flags.move_animation_options_to_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist moveToExternalDisplayShortcut()Z
    .locals 2

    .line 1170
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.window.flags.move_to_external_display_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multiCrop()Z
    .locals 2

    .line 1177
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda143;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda143;-><init>()V

    const-string v1, "com.android.window.flags.multi_crop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist navBarTransparentByDefault()Z
    .locals 2

    .line 1184
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda202;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda202;-><init>()V

    const-string v1, "com.android.window.flags.nav_bar_transparent_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noConsecutiveVisibilityEvents()Z
    .locals 2

    .line 1191
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda226;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda226;-><init>()V

    const-string v1, "com.android.window.flags.no_consecutive_visibility_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noDuplicateSurfaceDestroyedEvents()Z
    .locals 2

    .line 1198
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.window.flags.no_duplicate_surface_destroyed_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noVisibilityEventOnDisplayStateChange()Z
    .locals 2

    .line 1205
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.window.flags.no_visibility_event_on_display_state_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist normalizeHomeIntent()Z
    .locals 2

    .line 1212
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.window.flags.normalize_home_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist offloadColorExtraction()Z
    .locals 2

    .line 1219
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.window.flags.offload_color_extraction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist portWindowSizeAnimation()Z
    .locals 2

    .line 1226
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.window.flags.port_window_size_animation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackDefaultEnableSdk36()Z
    .locals 2

    .line 1233
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_default_enable_sdk_36"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackPrioritySystemNavigationObserver()Z
    .locals 2

    .line 1240
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_priority_system_navigation_observer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackSwipeEdgeNoneApi()Z
    .locals 2

    .line 1247
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_swipe_edge_none_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackSystemOverrideCallback()Z
    .locals 2

    .line 1254
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_system_override_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackThreeButtonNav()Z
    .locals 2

    .line 1261
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda189;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda189;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_three_button_nav"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist predictiveBackTimestampApi()Z
    .locals 2

    .line 1268
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda211;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda211;-><init>()V

    const-string v1, "com.android.window.flags.predictive_back_timestamp_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist processPriorityPolicyForMultiWindowMode()Z
    .locals 2

    .line 1275
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda141;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda141;-><init>()V

    const-string v1, "com.android.window.flags.process_priority_policy_for_multi_window_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rearDisplayDisableForceDesktopSystemDecorations()Z
    .locals 2

    .line 1282
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda186;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda186;-><init>()V

    const-string v1, "com.android.window.flags.rear_display_disable_force_desktop_system_decorations"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist recordTaskSnapshotsBeforeShutdown()Z
    .locals 2

    .line 1289
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.window.flags.record_task_snapshots_before_shutdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reduceChangedExclusionRectsMsgs()Z
    .locals 2

    .line 1296
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda139;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda139;-><init>()V

    const-string v1, "com.android.window.flags.reduce_changed_exclusion_rects_msgs"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reduceKeyguardTransitions()Z
    .locals 2

    .line 1303
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda138;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda138;-><init>()V

    const-string v1, "com.android.window.flags.reduce_keyguard_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relativeInsets()Z
    .locals 2

    .line 1310
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;-><init>()V

    const-string v1, "com.android.window.flags.relative_insets"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist releaseSnapshotAggressively()Z
    .locals 2

    .line 1317
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.window.flags.release_snapshot_aggressively"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist releaseUserAspectRatioWm()Z
    .locals 2

    .line 1324
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.window.flags.release_user_aspect_ratio_wm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeActivityStarterDreamCallback()Z
    .locals 2

    .line 1331
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda193;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda193;-><init>()V

    const-string v1, "com.android.window.flags.remove_activity_starter_dream_callback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeDeferHidingClient()Z
    .locals 2

    .line 1338
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.window.flags.remove_defer_hiding_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist reparentWindowTokenApi()Z
    .locals 2

    .line 1345
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.window.flags.reparent_window_token_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist respectAnimationClip()Z
    .locals 2

    .line 1352
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda137;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda137;-><init>()V

    const-string v1, "com.android.window.flags.respect_animation_clip"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist respectNonTopVisibleFixedOrientation()Z
    .locals 2

    .line 1359
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.window.flags.respect_non_top_visible_fixed_orientation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist respectOrientationChangeForUnresizeable()Z
    .locals 2

    .line 1366
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.window.flags.respect_orientation_change_for_unresizeable"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist safeRegionLetterboxing()Z
    .locals 2

    .line 1373
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda123;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda123;-><init>()V

    const-string v1, "com.android.window.flags.safe_region_letterboxing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist schedulingForNotificationShade()Z
    .locals 2

    .line 1380
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.window.flags.scheduling_for_notification_shade"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist screenRecordingCallbacks()Z
    .locals 2

    .line 1387
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;-><init>()V

    const-string v1, "com.android.window.flags.screen_recording_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scrollingFromLetterbox()Z
    .locals 2

    .line 1394
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;-><init>()V

    const-string v1, "com.android.window.flags.scrolling_from_letterbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sdkDesiredPresentTime()Z
    .locals 2

    .line 1401
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda188;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda188;-><init>()V

    const-string v1, "com.android.window.flags.sdk_desired_present_time"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setScPropertiesInClient()Z
    .locals 2

    .line 1408
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.window.flags.set_sc_properties_in_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showAppHandleLargeScreens()Z
    .locals 2

    .line 1415
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;-><init>()V

    const-string v1, "com.android.window.flags.show_app_handle_large_screens"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showDesktopExperienceDevOption()Z
    .locals 2

    .line 1422
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda148;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda148;-><init>()V

    const-string v1, "com.android.window.flags.show_desktop_experience_dev_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist showDesktopWindowingDevOption()Z
    .locals 2

    .line 1429
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.window.flags.show_desktop_windowing_dev_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipCompatUiEducationInDesktopMode()Z
    .locals 2

    .line 1436
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.window.flags.skip_compat_ui_education_in_desktop_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportsDragAssistantToMultiwindow()Z
    .locals 2

    .line 1443
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.window.flags.supports_drag_assistant_to_multiwindow"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportsMultiInstanceSystemUi()Z
    .locals 2

    .line 1450
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.window.flags.supports_multi_instance_system_ui"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist surfaceControlInputReceiver()Z
    .locals 2

    .line 1457
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.window.flags.surface_control_input_receiver"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist surfaceTrustedOverlay()Z
    .locals 2

    .line 1464
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda170;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda170;-><init>()V

    const-string v1, "com.android.window.flags.surface_trusted_overlay"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncScreenCapture()Z
    .locals 2

    .line 1471
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda199;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda199;-><init>()V

    const-string v1, "com.android.window.flags.sync_screen_capture"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemUiPostAnimationEnd()Z
    .locals 2

    .line 1478
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.window.flags.system_ui_post_animation_end"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist taskFragmentSystemOrganizerFlag()Z
    .locals 2

    .line 1485
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda158;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda158;-><init>()V

    const-string v1, "com.android.window.flags.task_fragment_system_organizer_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist touchPassThroughOptIn()Z
    .locals 2

    .line 1492
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda130;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda130;-><init>()V

    const-string v1, "com.android.window.flags.touch_pass_through_opt_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist trackSystemUiContextBeforeWms()Z
    .locals 2

    .line 1499
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.window.flags.track_system_ui_context_before_wms"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transitReadyTracking()Z
    .locals 2

    .line 1506
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda192;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda192;-><init>()V

    const-string v1, "com.android.window.flags.transit_ready_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist transitTrackerPlumbing()Z
    .locals 2

    .line 1513
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.window.flags.transit_tracker_plumbing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist trustedPresentationListenerForWindow()Z
    .locals 2

    .line 1520
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda165;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda165;-><init>()V

    const-string v1, "com.android.window.flags.trusted_presentation_listener_for_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unifyBackNavigationTransition()Z
    .locals 2

    .line 1527
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda153;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda153;-><init>()V

    const-string v1, "com.android.window.flags.unify_back_navigation_transition"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist universalResizableByDefault()Z
    .locals 2

    .line 1534
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda156;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda156;-><init>()V

    const-string v1, "com.android.window.flags.universal_resizable_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist untrustedEmbeddingAnyAppPermission()Z
    .locals 2

    .line 1541
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.window.flags.untrusted_embedding_any_app_permission"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist untrustedEmbeddingStateSharing()Z
    .locals 2

    .line 1548
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda194;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda194;-><init>()V

    const-string v1, "com.android.window.flags.untrusted_embedding_state_sharing"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateDimsWhenWindowShown()Z
    .locals 2

    .line 1555
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.window.flags.update_dims_when_window_shown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useRtFrameCallbackForSplashScreenTransfer()Z
    .locals 2

    .line 1562
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda155;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda155;-><init>()V

    const-string v1, "com.android.window.flags.use_rt_frame_callback_for_splash_screen_transfer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useSelfSyncTransactionForLayer()Z
    .locals 2

    .line 1569
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda119;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda119;-><init>()V

    const-string v1, "com.android.window.flags.use_self_sync_transaction_for_layer"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useTasksDimOnly()Z
    .locals 2

    .line 1576
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.window.flags.use_tasks_dim_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useWindowOriginalTouchableRegionWhenMagnificationRecomputeBounds()Z
    .locals 2

    .line 1583
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda152;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda152;-><init>()V

    const-string v1, "com.android.window.flags.use_window_original_touchable_region_when_magnification_recompute_bounds"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vdmForceAppUniversalResizableApi()Z
    .locals 2

    .line 1590
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda178;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda178;-><init>()V

    const-string v1, "com.android.window.flags.vdm_force_app_universal_resizable_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist waitForTransitionOnDisplaySwitch()Z
    .locals 2

    .line 1597
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.window.flags.wait_for_transition_on_display_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wallpaperOffsetAsync()Z
    .locals 2

    .line 1604
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.window.flags.wallpaper_offset_async"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wlinfoOncreate()Z
    .locals 2

    .line 1611
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda173;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags$$ExternalSyntheticLambda173;-><init>()V

    const-string v1, "com.android.window.flags.wlinfo_oncreate"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
