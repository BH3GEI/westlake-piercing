.class public final Landroid/view/inputmethod/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags; = null

.field public static final blacklist FLAG_ADAPTIVE_HANDWRITING_BOUNDS:Ljava/lang/String; = "android.view.inputmethod.adaptive_handwriting_bounds"

.field public static final blacklist FLAG_COMPATCHANGE_FOR_ZEROJANKPROXY:Ljava/lang/String; = "android.view.inputmethod.compatchange_for_zerojankproxy"

.field public static final blacklist FLAG_CONCURRENT_INPUT_METHODS:Ljava/lang/String; = "android.view.inputmethod.concurrent_input_methods"

.field public static final blacklist FLAG_CONNECTIONLESS_HANDWRITING:Ljava/lang/String; = "android.view.inputmethod.connectionless_handwriting"

.field public static final blacklist FLAG_CONSISTENT_GET_CURRENT_INPUT_METHOD_INFO:Ljava/lang/String; = "android.view.inputmethod.consistent_get_current_input_method_info"

.field public static final blacklist FLAG_CTRL_SHIFT_SHORTCUT:Ljava/lang/String; = "android.view.inputmethod.ctrl_shift_shortcut"

.field public static final blacklist FLAG_DEFER_SHOW_SOFT_INPUT_UNTIL_SESSION_CREATION:Ljava/lang/String; = "android.view.inputmethod.defer_show_soft_input_until_session_creation"

.field public static final blacklist FLAG_EDITORINFO_HANDWRITING_ENABLED:Ljava/lang/String; = "android.view.inputmethod.editorinfo_handwriting_enabled"

.field public static final blacklist FLAG_FALLBACK_DISPLAY_FOR_SECONDARY_USER_ON_SECONDARY_DISPLAY:Ljava/lang/String; = "android.view.inputmethod.fallback_display_for_secondary_user_on_secondary_display"

.field public static final blacklist FLAG_HOME_SCREEN_HANDWRITING_DELEGATOR:Ljava/lang/String; = "android.view.inputmethod.home_screen_handwriting_delegator"

.field public static final blacklist FLAG_IME_SWITCHER_REVAMP:Ljava/lang/String; = "android.view.inputmethod.ime_switcher_revamp"

.field public static final blacklist FLAG_IME_SWITCHER_REVAMP_API:Ljava/lang/String; = "android.view.inputmethod.ime_switcher_revamp_api"

.field public static final blacklist FLAG_INITIATION_WITHOUT_INPUT_CONNECTION:Ljava/lang/String; = "android.view.inputmethod.initiation_without_input_connection"

.field public static final blacklist FLAG_PREDICTIVE_BACK_IME:Ljava/lang/String; = "android.view.inputmethod.predictive_back_ime"

.field public static final blacklist FLAG_PUBLIC_AUTOFILL_ID_IN_EDITORINFO:Ljava/lang/String; = "android.view.inputmethod.public_autofill_id_in_editorinfo"

.field public static final blacklist FLAG_REFACTOR_INSETS_CONTROLLER:Ljava/lang/String; = "android.view.inputmethod.refactor_insets_controller"

.field public static final blacklist FLAG_USE_HANDWRITING_LISTENER_FOR_TOOLTYPE:Ljava/lang/String; = "android.view.inputmethod.use_handwriting_listener_for_tooltype"

.field public static final blacklist FLAG_USE_INPUT_METHOD_INFO_SAFE_LIST:Ljava/lang/String; = "android.view.inputmethod.use_input_method_info_safe_list"

.field public static final blacklist FLAG_USE_ZERO_JANK_PROXY:Ljava/lang/String; = "android.view.inputmethod.use_zero_jank_proxy"

.field public static final blacklist FLAG_VERIFY_KEY_EVENT:Ljava/lang/String; = "android.view.inputmethod.verify_key_event"

.field public static final blacklist FLAG_WRITING_TOOLS:Ljava/lang/String; = "android.view.inputmethod.writing_tools"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Landroid/view/inputmethod/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/view/inputmethod/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adaptiveHandwritingBounds()Z
    .locals 1

    .line 52
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->adaptiveHandwritingBounds()Z

    move-result v0

    return v0
.end method

.method public static greylist compatchangeForZerojankproxy()Z
    .locals 1

    .line 58
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->compatchangeForZerojankproxy()Z

    move-result v0

    return v0
.end method

.method public static greylist concurrentInputMethods()Z
    .locals 1

    .line 64
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->concurrentInputMethods()Z

    move-result v0

    return v0
.end method

.method public static greylist connectionlessHandwriting()Z
    .locals 1

    .line 70
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->connectionlessHandwriting()Z

    move-result v0

    return v0
.end method

.method public static greylist consistentGetCurrentInputMethodInfo()Z
    .locals 1

    .line 76
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->consistentGetCurrentInputMethodInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist ctrlShiftShortcut()Z
    .locals 1

    .line 82
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->ctrlShiftShortcut()Z

    move-result v0

    return v0
.end method

.method public static greylist deferShowSoftInputUntilSessionCreation()Z
    .locals 1

    .line 88
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->deferShowSoftInputUntilSessionCreation()Z

    move-result v0

    return v0
.end method

.method public static greylist editorinfoHandwritingEnabled()Z
    .locals 1

    .line 94
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->editorinfoHandwritingEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z
    .locals 1

    .line 100
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z

    move-result v0

    return v0
.end method

.method public static greylist homeScreenHandwritingDelegator()Z
    .locals 1

    .line 106
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->homeScreenHandwritingDelegator()Z

    move-result v0

    return v0
.end method

.method public static greylist imeSwitcherRevamp()Z
    .locals 1

    .line 112
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->imeSwitcherRevamp()Z

    move-result v0

    return v0
.end method

.method public static greylist imeSwitcherRevampApi()Z
    .locals 1

    .line 118
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->imeSwitcherRevampApi()Z

    move-result v0

    return v0
.end method

.method public static greylist initiationWithoutInputConnection()Z
    .locals 1

    .line 124
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->initiationWithoutInputConnection()Z

    move-result v0

    return v0
.end method

.method public static greylist predictiveBackIme()Z
    .locals 1

    .line 130
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->predictiveBackIme()Z

    move-result v0

    return v0
.end method

.method public static greylist publicAutofillIdInEditorinfo()Z
    .locals 1

    .line 136
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->publicAutofillIdInEditorinfo()Z

    move-result v0

    return v0
.end method

.method public static greylist refactorInsetsController()Z
    .locals 1

    .line 142
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->refactorInsetsController()Z

    move-result v0

    return v0
.end method

.method public static greylist useHandwritingListenerForTooltype()Z
    .locals 1

    .line 148
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->useHandwritingListenerForTooltype()Z

    move-result v0

    return v0
.end method

.method public static greylist useInputMethodInfoSafeList()Z
    .locals 1

    .line 154
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->useInputMethodInfoSafeList()Z

    move-result v0

    return v0
.end method

.method public static greylist useZeroJankProxy()Z
    .locals 1

    .line 160
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->useZeroJankProxy()Z

    move-result v0

    return v0
.end method

.method public static greylist verifyKeyEvent()Z
    .locals 1

    .line 166
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->verifyKeyEvent()Z

    move-result v0

    return v0
.end method

.method public static greylist writingTools()Z
    .locals 1

    .line 172
    sget-object v0, Landroid/view/inputmethod/Flags;->FEATURE_FLAGS:Landroid/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Landroid/view/inputmethod/FeatureFlags;->writingTools()Z

    move-result v0

    return v0
.end method
