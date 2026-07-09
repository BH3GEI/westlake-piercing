.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$DelegateImpl;,
        Landroid/view/inputmethod/InputMethodManager$BindState;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;,
        Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;,
        Landroid/view/inputmethod/InputMethodManager$HideFlags;,
        Landroid/view/inputmethod/InputMethodManager$ShowFlags;,
        Landroid/view/inputmethod/InputMethodManager$HandwritingDelegateFlags;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_RETURN_TRUE_HIDE_SOFT_INPUT_FROM_WINDOW:J = 0x17932c7eL

.field private static final blacklist CACHE_KEY_CONNECTIONLESS_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.connectionless_stylus_handwriting"

.field private static final blacklist CACHE_KEY_STYLUS_HANDWRITING_PROPERTY:Ljava/lang/String; = "cache_key.system_server.stylus_handwriting"

.field public static final blacklist CLEAR_SHOW_FORCED_FLAG_WHEN_LEAVING:J = 0xcc1a029L

.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field public static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field public static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field public static final whitelist HANDWRITING_DELEGATE_FLAG_HOME_DELEGATOR_ALLOWED:I = 0x1

.field public static final whitelist HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final whitelist HIDE_NOT_ALWAYS:I = 0x2

.field private static final greylist-max-o INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field private static final greylist-max-o MSG_BIND:I = 0x2

.field private static final blacklist MSG_BIND_ACCESSIBILITY_SERVICE:I = 0xb

.field private static final greylist-max-o MSG_DUMP:I = 0x1

.field private static final greylist-max-o MSG_FLUSH_INPUT_EVENT:I = 0x7

.field private static final blacklist MSG_ON_SHOW_REQUESTED:I = 0x1f

.field private static final greylist-max-o MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field private static final greylist-max-o MSG_SEND_INPUT_EVENT:I = 0x5

.field private static final greylist-max-o MSG_SET_ACTIVE:I = 0x4

.field private static final blacklist MSG_SET_INTERACTIVE:I = 0xd

.field private static final blacklist MSG_SET_VISIBILITY:I = 0xe

.field private static final blacklist MSG_START_INPUT_RESULT:I = 0x28

.field private static final greylist-max-o MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field private static final greylist-max-o MSG_UNBIND:I = 0x3

.field private static final blacklist MSG_UNBIND_ACCESSIBILITY_SERVICE:I = 0xc

.field private static final blacklist NOT_A_SUBTYPE_ID:I = -0x1

.field private static final blacklist OPTIMIZE_NONEDITABLE_VIEWS:Z

.field private static final greylist-max-o PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final greylist-max-o REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final whitelist RESULT_HIDDEN:I = 0x3

.field public static final whitelist RESULT_SHOWN:I = 0x2

.field public static final whitelist RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final whitelist RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final whitelist SHOW_FORCED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHOW_IMPLICIT:I = 0x1

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final greylist-max-o SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field private static final blacklist SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodManager"

.field private static final blacklist USE_ASYNC_SHOW_HIDE_METHOD:J = 0x15042965L

.field static greylist sInstance:Landroid/view/inputmethod/InputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sInstanceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sPreventImeStartupUnlessTextEditor:Z


# instance fields
.field private final blacklist mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActive:Z

.field private final blacklist mAsyncShowHideMethodEnabled:Z

.field private final blacklist mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

.field private greylist-max-o mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private blacklist mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

.field private greylist-max-o mCurChannel:Landroid/view/InputChannel;

.field greylist mCurId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field greylist mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field blacklist mCurRootView:Landroid/view/ViewRootImpl;

.field blacklist mCurRootViewWindowFocused:Z

.field private greylist-max-o mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field private blacklist mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private greylist-max-o mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field private greylist-max-o mCursorCandEnd:I

.field private greylist-max-o mCursorCandStart:I

.field greylist mCursorRect:Landroid/graphics/Rect;

.field private greylist-max-o mCursorSelEnd:I

.field private greylist-max-o mCursorSelStart:I

.field private final blacklist mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field private final blacklist mDisplayId:I

.field private final blacklist mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private greylist-max-o mFullscreenMode:Z

.field final greylist-max-p mH:Landroid/view/inputmethod/InputMethodManager$H;

.field private final blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private blacklist mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

.field private blacklist mInitialSelEnd:I

.field private blacklist mInitialSelStart:I

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private blacklist mNextServedView:Landroid/view/View;

.field private final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

.field private blacklist mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

.field final blacklist mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mRequestUpdateCursorAnchorInfoMonitorMode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mRestartOnNextWindowFocus:Z

.field private greylist-max-o mServedConnecting:Z

.field private blacklist mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field private blacklist mServedInputConnectionHandler:Landroid/os/Handler;

.field private blacklist mServedView:Landroid/view/View;

.field final greylist mService:Lcom/android/internal/view/IInputMethodManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field greylist mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$KGScHDK9-7Fekxsisng64hyxDzA(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$startInputInner$4(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bODOqpeC_eLdvQMTobNtxBtS0T8(Landroid/view/inputmethod/InputMethodManager;IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->lambda$updateSelection$6(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->clearAccessibilityBindingLocked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearAllAccessibilityBindingLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearCurRootViewIfNeeded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnectionInternal(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monImeFocusLost(Landroid/view/inputmethod/InputMethodManager;Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->onImeFocusLost(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->onViewFocusChangedInternal(Landroid/view/View;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportInputConnectionOpened(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcanStartInput(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    .line 407
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    .line 497
    nop

    .line 498
    const-string v0, "debug.imm.optimize_noneditable_views"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z

    .line 497
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;
    .param p2, "displayId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    .line 317
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 549
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 623
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 627
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 636
    nop

    .line 637
    invoke-static {}, Landroid/view/inputmethod/Flags;->compatchangeForZerojankproxy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    const-wide/32 v2, 0x15042965

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 676
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 717
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 733
    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 743
    new-instance v3, Landroid/util/Pools$SimplePool;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 745
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 748
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    invoke-direct {v3, p0, v2}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    .line 1480
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$2;

    invoke-direct {v3, p0}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 4800
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1661
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 1662
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 1663
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v1, p0, p3}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 1664
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    .line 1665
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v3, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v3, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    invoke-direct {v1, p3, v3, p0, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1667
    return-void
.end method

.method private static blacklist areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/view/InputChannel;
    .param p1, "rhs"    # Landroid/view/InputChannel;

    .line 2159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2160
    return v0

    .line 2162
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 2165
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 2163
    :cond_3
    :goto_1
    return v1
.end method

.method private static greylist-max-o canStartInput(Landroid/view/View;)Z
    .locals 1
    .param p0, "servedView"    # Landroid/view/View;

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->isAutofillUIShowing(Landroid/view/View;)Z

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

.method private blacklist checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z
    .locals 3
    .param p1, "forceNewFocus"    # Z
    .param p2, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 3738
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    .line 3739
    return v1

    .line 3741
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 3742
    return v1

    .line 3753
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 3754
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 3755
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3756
    return v1

    .line 3758
    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 3759
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_3

    .line 3760
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    .line 3762
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist clearAccessibilityBindingLocked(I)V
    .locals 1
    .param p1, "id"    # I

    .line 2124
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2125
    return-void
.end method

.method private blacklist clearAllAccessibilityBindingLocked()V
    .locals 1

    .line 2133
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2134
    return-void
.end method

.method private greylist-max-o clearBindingLocked()V
    .locals 1

    .line 2110
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 2112
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 2113
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2115
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 2116
    return-void
.end method

.method private greylist-max-o clearConnectionLocked()V
    .locals 2

    .line 2174
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2175
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;

    .line 2176
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_0

    .line 2177
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 2178
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 2179
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 2181
    :cond_0
    return-void
.end method

.method private blacklist clearCurRootViewIfNeeded()Z
    .locals 2

    .line 2221
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    if-nez v0, :cond_0

    .line 2222
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 2223
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->-$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V

    .line 2225
    const/4 v0, 0x1

    return v0

    .line 2228
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist createInputConnection(Landroid/view/View;)Landroid/util/Pair;
    .locals 3
    .param p0, "servedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/inputmethod/InputConnection;",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation

    .line 5265
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 5269
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 5270
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5271
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 5272
    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5278
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 5279
    sget-object v2, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/EditorInfo;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 5280
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 5282
    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static blacklist createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1601
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    goto :goto_0

    .line 1602
    :cond_0
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1601
    :goto_0
    return-object v0
.end method

.method private static blacklist createRealInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 6
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1607
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 1608
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-eqz v0, :cond_0

    .line 1611
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    .line 1619
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1621
    .local v2, "identity":J
    :try_start_0
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v4, v5, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1625
    nop

    .line 1626
    return-object v1

    .line 1624
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1625
    throw v4

    .line 1609
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "identity":J
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IInputMethodManager is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist createStubInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1632
    const-class v0, Lcom/android/internal/view/IInputMethodManager;

    .line 1633
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/view/IInputMethodManager;>;"
    nop

    .line 1634
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    .line 1657
    .local v1, "stubInterface":Lcom/android/internal/view/IInputMethodManager;
    new-instance v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v2, v1, p0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;ILandroid/os/Looper;)V

    return-object v2
.end method

.method private greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4987
    invoke-direct {p0, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4988
    return-void

    .line 4991
    :cond_0
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4992
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFallbackInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFallbackInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRestartOnNextWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4996
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getBindSequenceLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurImeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4997
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4994
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFullscreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4999
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5002
    :cond_1
    const-string v1, "  mCurMethod= null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5004
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAccessibilityInputMethodSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 5006
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    .line 5007
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5005
    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5004
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5009
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5013
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    .line 5014
    const-string v1, "  mCurrentEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5015
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_2

    .line 5017
    :cond_3
    const-string v1, "  mCurrentEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5019
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnectionHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5027
    return-void
.end method

.method public static blacklist ensureDefaultInstanceForDefaultDisplayIfNecessary()V
    .locals 2

    .line 382
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    .line 385
    :cond_0
    return-void
.end method

.method private greylist-max-o finishedInputEvent(IZZ)V
    .locals 7
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 4472
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4473
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 4474
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 4475
    monitor-exit v0

    return-void

    .line 4478
    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4479
    .local v2, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4480
    const-string v3, "aq:imm"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v5, 0x4

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4482
    if-eqz p3, :cond_1

    .line 4483
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4486
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 4488
    .end local v1    # "index":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4490
    invoke-direct {p0, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4491
    return-void

    .line 4488
    .end local v2    # "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .locals 6

    .line 4511
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    .line 4513
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4514
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4515
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4516
    .local v3, "seq":I
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 4517
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4518
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4514
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4520
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;",
            ">;)V"
        }
    .end annotation

    .line 5257
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5258
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5260
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1678
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1681
    .local v0, "displayId":I
    if-nez v0, :cond_0

    .line 1682
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1685
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    .line 1687
    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist forContextInternal(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1692
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1693
    .local v0, "isDefaultDisplay":Z
    :goto_0
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1694
    :try_start_0
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1695
    .local v2, "instance":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 1696
    monitor-exit v1

    return-object v2

    .line 1698
    :cond_1
    invoke-static {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->createInstance(ILandroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1700
    .end local v2    # "instance":Landroid/view/inputmethod/InputMethodManager;
    .local v3, "instance":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 1701
    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1703
    :cond_2
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1704
    monitor-exit v1

    return-object v3

    .line 1705
    .end local v3    # "instance":Landroid/view/inputmethod/InputMethodManager;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getBindSequenceLocked()I
    .locals 1

    .line 5188
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mBindSequence:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private blacklist getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 806
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 807
    return-object v0

    .line 815
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 816
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_1

    .line 817
    return-object v0

    .line 819
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v2

    .line 820
    .local v2, "viewRootDisplayId":I
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-ne v2, v3, :cond_2

    .line 822
    return-object v0

    .line 824
    :cond_2
    iget-object v3, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 825
    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 826
    .local v3, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    const-string v4, "InputMethodManager"

    if-nez v3, :cond_3

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get non-null fallback IMM. view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return-object v0

    .line 830
    :cond_3
    iget v5, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    if-eq v5, v2, :cond_4

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b/117267690: Failed to get fallback IMM with expected displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " actual IMM#displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-object v0

    .line 836
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b/117267690: Display ID mismatch found. ViewRootImpl displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " InputMethodManager displayId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Use the right InputMethodManager instance to avoid performance overhead."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    return-object v3
.end method

.method private blacklist getImeIdLocked()Ljava/lang/String;
    .locals 1

    .line 5183
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static greylist getInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1719
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InputMethodManager"

    const-string v2, "InputMethodManager.getInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1723
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 1724
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNextServedViewLocked()Landroid/view/View;
    .locals 1

    .line 1113
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist getServedViewLocked()Landroid/view/View;
    .locals 1

    .line 1108
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist getStartInputFlags(Landroid/view/View;I)I
    .locals 1
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "startInputFlags"    # I

    .line 3698
    or-int/lit8 p2, p2, 0x1

    .line 3699
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3700
    or-int/lit8 p2, p2, 0x2

    .line 3702
    :cond_0
    return p2
.end method

.method private blacklist hasActiveInputConnectionInternal(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1083
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1084
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1088
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1089
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 1088
    return v2

    .line 1085
    :cond_2
    :goto_1
    monitor-exit v0

    return v2

    .line 1090
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist hasServedByInputMethodLocked(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1121
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 1122
    .local v0, "servedView":Landroid/view/View;
    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1122
    :goto_1
    return v1
.end method

.method private blacklist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 18
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I
    .param p5, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2612
    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 2613
    :try_start_0
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    .line 2614
    .local v9, "initialServedView":Landroid/view/View;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2616
    if-nez p5, :cond_0

    .line 2617
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 2618
    invoke-static {v9}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v2

    .line 2617
    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-interface {v0, v3, v4, v7, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    .line 2619
    .end local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v0, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v2

    new-instance v3, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v0, v4, v7, v3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    move-object v4, v0

    goto :goto_0

    .line 2616
    .end local v0    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_0
    move-object/from16 v4, p5

    .line 2622
    .end local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v4, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v2, "InputMethodManager#hideSoftInputFromWindow"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2624
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2625
    iget-object v10, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 2627
    :try_start_1
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 2628
    .local v0, "servedView":Landroid/view/View;
    const-wide/32 v11, 0x17932c7e

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v13, p1

    if-eq v8, v13, :cond_1

    move-wide/from16 v16, v11

    goto/16 :goto_4

    .line 2638
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2640
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2642
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 2643
    .local v8, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_8

    .line 2644
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 2645
    .local v14, "vh":Landroid/os/Handler;
    const/16 v15, 0x42

    if-nez v14, :cond_3

    .line 2648
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v4, v15}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2652
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v11, v12}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    monitor-exit v10

    return v2

    .line 2655
    :cond_3
    move-wide/from16 v16, v11

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v11

    invoke-interface {v11, v4, v15}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2658
    nop

    .line 2659
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v11

    .line 2660
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    move v11, v5

    goto :goto_1

    :cond_4
    move v11, v2

    .line 2661
    .local v11, "imeReqVisible":Z
    :goto_1
    if-eqz v6, :cond_6

    .line 2662
    nop

    .line 2663
    if-nez v11, :cond_5

    goto :goto_2

    .line 2664
    :cond_5
    const/4 v5, 0x3

    :goto_2
    nop

    .line 2662
    invoke-virtual {v6, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2666
    :cond_6
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v3, v5, :cond_7

    .line 2670
    move-object v2, v4

    .line 2671
    .local v2, "finalStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v8, v2}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v14, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2673
    nop

    .end local v2    # "finalStatsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_3

    .line 2674
    :cond_7
    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-virtual {v3, v5, v2, v4}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2677
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2681
    monitor-exit v10

    return v11

    .line 2643
    .end local v11    # "imeReqVisible":Z
    .end local v14    # "vh":Landroid/os/Handler;
    :cond_8
    move-wide/from16 v16, v11

    .line 2685
    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    monitor-exit v10

    return v2

    .line 2688
    .end local v8    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    iget-boolean v8, v1, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    move/from16 v5, p2

    move-object v3, v13

    invoke-static/range {v2 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v2

    monitor-exit v10

    return v2

    .line 2628
    :cond_b
    move-wide/from16 v16, v11

    .line 2629
    :goto_4
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2630
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v3

    new-instance v6, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2634
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static/range {v16 .. v17}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_c

    move v2, v5

    :cond_c
    monitor-exit v10

    return v2

    .line 2691
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2614
    .end local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v9    # "initialServedView":Landroid/view/View;
    .restart local p5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static blacklist invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V
    .locals 1

    .line 785
    const-string v0, "cache_key.system_server.connectionless_stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public static blacklist invalidateLocalStylusHandwritingAvailabilityCaches()V
    .locals 1

    .line 775
    const-string v0, "cache_key.system_server.stylus_handwriting"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method private greylist-max-o invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .param p2, "handled"    # Z

    .line 4495
    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 4496
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4499
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    goto :goto_0

    .line 4503
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4504
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4507
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method private static greylist-max-o isAutofillUIShowing(Landroid/view/View;)Z
    .locals 2
    .param p0, "servedView"    # Landroid/view/View;

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 791
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isImeSessionAvailableLocked()Z
    .locals 1

    .line 5178
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isInEditMode()Z
    .locals 1

    .line 1592
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist isInEditModeInternal()Z
    .locals 1

    .line 1596
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method private blacklist isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z
    .locals 7
    .param p1, "previousViewFocusParameters"    # Landroid/view/inputmethod/ViewFocusParameterInfo;
    .param p2, "startInputFlags"    # I
    .param p3, "startInputReason"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 3623
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3626
    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .end local p2    # "startInputFlags":I
    .end local p3    # "startInputReason":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .local v1, "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .local v3, "startInputFlags":I
    .local v4, "startInputReason":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/ViewFocusParameterInfo;->sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 3623
    .end local v1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .end local v3    # "startInputFlags":I
    .end local v4    # "startInputReason":I
    .end local v5    # "softInputMode":I
    .end local v6    # "windowFlags":I
    .restart local p1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .restart local p2    # "startInputFlags":I
    .restart local p3    # "startInputReason":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_0
    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 3626
    .end local p1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .end local p2    # "startInputFlags":I
    .end local p3    # "startInputReason":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v1    # "previousViewFocusParameters":Landroid/view/inputmethod/ViewFocusParameterInfo;
    .restart local v3    # "startInputFlags":I
    .restart local v4    # "startInputReason":I
    .restart local v5    # "softInputMode":I
    .restart local v6    # "windowFlags":I
    :cond_1
    const/4 p1, 0x0

    .line 3623
    :goto_0
    return p1
.end method

.method static synthetic blacklist lambda$closeCurrentInput$5(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3
    .param p0, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3840
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    .line 3841
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    .line 3840
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static synthetic blacklist lambda$createStubInstance$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1636
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1637
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1637
    if-ne v0, v1, :cond_0

    .line 1638
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1639
    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1640
    return-object v3

    .line 1641
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1642
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1643
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1644
    return-object v3

    .line 1645
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1646
    return-object v3

    .line 1647
    :cond_4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1648
    return-object v3

    .line 1649
    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1650
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1651
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1652
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1654
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$doInvalidateInput$3(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .locals 0
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "accessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "sessionId"    # I
    .param p3, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 3303
    invoke-virtual {p3, p0, p1, p2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method static synthetic blacklist lambda$getShortcutInputMethodsAndSubtypes$7(Landroid/view/inputmethod/InputMethodInfo;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 4761
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$hideSoftInputFromWindow$1(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3
    .param p0, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p1, "finalStatsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 2671
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v0

    .line 2672
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    .line 2671
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendFailureCallback$2(Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 2783
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$startInputInner$4(I)V
    .locals 6
    .param p1, "startInputReason"    # I

    .line 3390
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "startInputReason":I
    .local v1, "startInputReason":I
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$6(IIIILandroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .locals 7
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "candidatesStart"    # I
    .param p4, "candidatesEnd"    # I
    .param p5, "wrapper"    # Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    .line 4004
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v0, p5

    .end local p1    # "selStart":I
    .end local p2    # "selEnd":I
    .end local p3    # "candidatesStart":I
    .end local p4    # "candidatesEnd":I
    .end local p5    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .local v0, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .local v3, "selStart":I
    .local v4, "selEnd":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "inputMethodId"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 4525
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4526
    .local v0, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    if-nez v0, :cond_0

    .line 4527
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager-IA;)V

    move-object v0, v1

    .line 4529
    :cond_0
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4530
    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 4531
    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 4532
    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 4533
    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 4534
    return-object v0
.end method

.method private blacklist onImeFocusLost(Landroid/view/ViewRootImpl;)V
    .locals 7
    .param p1, "previousRootView"    # Landroid/view/ViewRootImpl;

    .line 1028
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1029
    .local v0, "softInputMode":I
    and-int/lit8 v1, v0, 0xf

    .line 1031
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1034
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0x3a

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    .line 1042
    .local v2, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4, v6, v2}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 1045
    .end local v2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_0
    return-void
.end method

.method private blacklist onViewFocusChangedInternal(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 3767
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3770
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3771
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3772
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v0, :cond_1

    .line 3773
    monitor-exit v1

    return-void

    .line 3775
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 3792
    :cond_2
    if-eqz p2, :cond_3

    .line 3793
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 3795
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3796
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 3797
    return-void

    .line 3776
    :cond_4
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 3795
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3768
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_5
    :goto_1
    return-void
.end method

.method public static greylist peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1738
    const-string v0, "InputMethodManager"

    const-string v1, "InputMethodManager.peekInstance() is deprecated because it cannot be compatible with multi-display. Use context.getSystemService(InputMethodManager.class) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1742
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_0
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v0

    return-object v1

    .line 1744
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist processDump(Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 5198
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 5199
    return v0

    .line 5202
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 5203
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "--proto-com-android-imetracing"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5204
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5205
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 5206
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 5207
    const/4 v1, 0x1

    return v1

    .line 5202
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5210
    :cond_2
    return v0
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4539
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    .line 4540
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 4541
    return-void
.end method

.method private blacklist reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "icHandler"    # Landroid/os/Handler;
    .param p4, "view"    # Landroid/view/View;

    .line 3632
    invoke-virtual {p4, p1, p2, p3}, Landroid/view/View;->onInputConnectionOpenedInternal(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;)V

    .line 3633
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 3634
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 3635
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/HandwritingInitiator;->onInputConnectionCreated(Landroid/view/View;)V

    .line 3637
    :cond_0
    return-void
.end method

.method private blacklist sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2780
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2783
    :cond_0
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2784
    return-void

    .line 2781
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .locals 3
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4427
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4428
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result v1

    .line 4429
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4430
    monitor-exit v0

    return-void

    .line 4433
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4434
    .end local v1    # "result":I
    .local v2, "handled":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4436
    invoke-direct {p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    .line 4437
    return-void

    .line 4434
    .end local v2    # "handled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .locals 7
    .param p1, "p"    # Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    .line 4442
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4443
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v0, :cond_0

    .line 4444
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 4447
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4448
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    .line 4449
    .local v2, "seq":I
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4450
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4451
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    .line 4452
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4451
    const-wide/16 v4, 0x4

    const-string v6, "aq:imm"

    invoke-static {v4, v5, v6, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4454
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4455
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4456
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4457
    const/4 v3, -0x1

    return v3

    .line 4460
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->sPreventImeStartupUnlessTextEditor:Z

    const-string v4, "InputMethodManager"

    if-eqz v3, :cond_2

    .line 4461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping event because IME is evicted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4463
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send input event to IME: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getImeIdLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " dropping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_3
    :goto_0
    return v1
.end method

.method private greylist-max-o showInputMethodPickerLocked()V
    .locals 2

    .line 4572
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 4574
    return-void
.end method

.method private blacklist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I

    .line 2399
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    .line 2400
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v1

    .line 2399
    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v6

    .line 2401
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p4    # "reason":I
    .local v5, "view":Landroid/view/View;
    .local v7, "flags":I
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    .local v9, "reason":I
    invoke-direct/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result p1

    return p1
.end method

.method private blacklist showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I

    .line 2407
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x5

    move/from16 v6, p5

    invoke-virtual {v0, p2, v2, v6, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2409
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#showSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2412
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2413
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 2414
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    move-object v9, v1

    .end local v1    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .local v9, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    return v0

    .line 2417
    .end local v9    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v1    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    move-object v5, p4

    move-object v9, v1

    .end local v1    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v9    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2418
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    .line 2419
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 2420
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2421
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p2, v4, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2423
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring showSoftInput() as view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not served."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    monitor-exit v10

    return v1

    .line 2427
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2429
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2430
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2435
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/16 v6, 0x3d

    if-eqz v0, :cond_6

    .line 2436
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsController;->computeUserAnimatingTypes()I

    move-result v7

    .line 2437
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    .line 2438
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v7

    .line 2439
    invoke-virtual {v7}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2440
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    invoke-interface {v7, p2, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2442
    if-eqz v5, :cond_5

    .line 2443
    nop

    .line 2444
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v6

    .line 2445
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v1

    .line 2446
    .local v6, "imeReqVisible":Z
    :goto_0
    nop

    .line 2447
    if-eqz v6, :cond_4

    move v7, v1

    goto :goto_1

    .line 2448
    :cond_4
    const/4 v7, 0x2

    :goto_1
    nop

    .line 2446
    invoke-virtual {p4, v7, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2451
    .end local v6    # "imeReqVisible":Z
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    invoke-virtual {v2, v6, v1, p2}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2453
    monitor-exit v10

    return v4

    .line 2455
    :cond_6
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v6}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2457
    monitor-exit v10

    return v1

    .line 2461
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2462
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSoftInput() view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v4, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2463
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2462
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2466
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2469
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v0

    iget-boolean v8, p0, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 2464
    move-object v3, p2

    move/from16 v7, p5

    move-object v6, v5

    move v5, v0

    invoke-static/range {v1 .. v8}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0

    monitor-exit v10

    return v0

    .line 2474
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "delegatePackageName"    # Ljava/lang/String;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2953
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2958
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 2959
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "delegatorPackageName":Ljava/lang/String;
    .end local p4    # "delegatePackageName":Ljava/lang/String;
    .end local p5    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p6    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v2, "view":Landroid/view/View;
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v4, "delegatorPackageName":Ljava/lang/String;
    .local v5, "delegatePackageName":Ljava/lang/String;
    .local v6, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    move-object p3, v3

    move-object p5, v4

    .end local v3    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local v4    # "delegatorPackageName":Ljava/lang/String;
    .end local v5    # "delegatePackageName":Ljava/lang/String;
    .local p3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .restart local p4    # "delegatePackageName":Ljava/lang/String;
    .local p5, "delegatorPackageName":Ljava/lang/String;
    goto :goto_0

    .line 2958
    .end local v2    # "view":Landroid/view/View;
    .end local v6    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local v7    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local p3, "delegatorPackageName":Ljava/lang/String;
    .local p5, "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p6    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    :cond_0
    move-object v2, p1

    move-object v6, p5

    move-object v7, p6

    move-object p5, p3

    move-object p3, p2

    .line 2963
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p6    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v6    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local v7    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local p3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local p5, "delegatorPackageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2964
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 2965
    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq p1, p2, :cond_1

    .line 2966
    const-string p1, "InputMethodManager"

    const-string p2, "Ignoring startConnectionlessStylusHandwriting: View\'s window does not have focus."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    monitor-exit v3

    return-void

    .line 2970
    :cond_1
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2971
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    new-instance p6, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;

    invoke-direct {p6, v6, v7}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2970
    invoke-static/range {p1 .. p6}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z

    .line 2974
    monitor-exit v3

    .line 2975
    return-void

    .line 2974
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private greylist-max-o startInputInner(ILandroid/os/IBinder;III)Z
    .locals 30
    .param p1, "startInputReason"    # I
    .param p2, "windowGainingFocus"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 3358
    move-object/from16 v1, p0

    move/from16 v3, p1

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3359
    :try_start_0
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    .line 3366
    .local v14, "view":Landroid/view/View;
    const/4 v15, 0x0

    if-nez v14, :cond_0

    .line 3368
    monitor-exit v2

    return v15

    .line 3370
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    .line 3376
    invoke-virtual {v14}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 3377
    .local v7, "vh":Landroid/os/Handler;
    if-nez v7, :cond_1

    .line 3383
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 3384
    return v15

    .line 3386
    :cond_1
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 3390
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3391
    return v15

    .line 3394
    :cond_2
    if-nez p2, :cond_4

    .line 3395
    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3396
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local v0, "windowGainingFocus":Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 3397
    const-string v2, "InputMethodManager"

    const-string v4, "ABORT input: ServedView must be attached to a Window"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    return v15

    .line 3400
    :cond_3
    move/from16 v4, p3

    invoke-direct {v1, v14, v4}, Landroid/view/inputmethod/InputMethodManager;->getStartInputFlags(Landroid/view/View;I)I

    move-result v2

    .line 3401
    .end local p3    # "startInputFlags":I
    .local v2, "startInputFlags":I
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3402
    .end local p4    # "softInputMode":I
    .local v4, "softInputMode":I
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v8, v0

    move v6, v5

    move v5, v4

    .end local p5    # "windowFlags":I
    .local v5, "windowFlags":I
    goto :goto_0

    .line 3394
    .end local v0    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v2    # "startInputFlags":I
    .end local v4    # "softInputMode":I
    .end local v5    # "windowFlags":I
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :cond_4
    move/from16 v4, p3

    move-object/from16 v8, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move v2, v4

    .line 3408
    .end local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    .local v8, "windowGainingFocus":Landroid/os/IBinder;
    :goto_0
    invoke-static {v14}, Landroid/view/inputmethod/InputMethodManager;->createInputConnection(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v9

    .line 3409
    .local v9, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/view/inputmethod/InputConnection;

    .line 3410
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    .line 3412
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    const/16 v16, 0x0

    .line 3414
    .local v16, "res":Lcom/android/internal/inputmethod/InputBindResult;
    iget-object v12, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v12

    .line 3417
    :try_start_1
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    .line 3418
    .local v13, "servedView":Landroid/view/View;
    if-ne v13, v14, :cond_1d

    iget-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    if-nez v0, :cond_5

    move-object/from16 v18, v9

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v19, v15

    move v9, v3

    move v12, v6

    move-object v15, v7

    move-object v7, v11

    move-object v3, v14

    move v11, v5

    move-object v5, v10

    move-object v10, v8

    goto/16 :goto_14

    .line 3436
    :cond_5
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_14

    if-nez v0, :cond_6

    .line 3437
    or-int/lit8 v2, v2, 0x4

    move v4, v2

    goto :goto_1

    .line 3436
    :cond_6
    move v4, v2

    .line 3440
    .end local v2    # "startInputFlags":I
    .local v4, "startInputFlags":I
    :goto_1
    :try_start_2
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialToolType(I)V

    .line 3443
    invoke-virtual {v11}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3446
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-object/from16 v17, v0

    .line 3448
    .local v17, "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    iput-boolean v15, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 3449
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 3450
    :try_start_3
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    .line 3451
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3452
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    goto :goto_2

    .line 3598
    .end local v13    # "servedView":Landroid/view/View;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :catchall_0
    move-exception v0

    move v2, v4

    move-object v15, v7

    move-object/from16 v18, v9

    move-object v7, v11

    move-object/from16 v26, v12

    move v9, v3

    move v11, v5

    move v12, v6

    move-object v5, v10

    move-object v3, v14

    move-object v10, v8

    goto/16 :goto_15

    .line 3455
    .restart local v13    # "servedView":Landroid/view/View;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :cond_7
    :goto_2
    if-eqz v10, :cond_9

    .line 3456
    iget v0, v11, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 3457
    iget v0, v11, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 3458
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelStart:I

    .line 3459
    iget v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mInitialSelEnd:I

    .line 3460
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3461
    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3462
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3463
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3464
    const/16 v18, 0x0

    .line 3466
    .local v18, "handler":Landroid/os/Handler;
    :try_start_4
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v0

    .line 3469
    goto :goto_3

    .line 3467
    :catch_0
    move-exception v0

    .line 3470
    :goto_3
    move-object/from16 v0, v18

    .line 3471
    .local v0, "icHandler":Landroid/os/Handler;
    :try_start_5
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3472
    move/from16 v19, v15

    new-instance v15, Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3473
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    :goto_4
    move-object/from16 v2, v20

    invoke-direct {v15, v2, v10, v1, v14}, Landroid/view/inputmethod/RemoteInputConnectionImpl;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3474
    .end local v18    # "handler":Landroid/os/Handler;
    .local v15, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    const/4 v2, 0x0

    move-object/from16 v18, v8

    move-object v8, v15

    move-object v15, v0

    goto :goto_5

    .line 3475
    .end local v0    # "icHandler":Landroid/os/Handler;
    .end local v15    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :cond_9
    move/from16 v19, v15

    const/4 v15, 0x0

    .line 3476
    .restart local v15    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    const/4 v0, 0x0

    .line 3477
    .restart local v0    # "icHandler":Landroid/os/Handler;
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_13

    move-object/from16 v18, v8

    move-object v8, v15

    move-object v15, v0

    .line 3479
    .end local v0    # "icHandler":Landroid/os/Handler;
    .local v8, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v15, "icHandler":Landroid/os/Handler;
    .local v18, "windowGainingFocus":Landroid/os/IBinder;
    :goto_5
    :try_start_7
    iput-object v8, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3488
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->OPTIMIZE_NONEDITABLE_VIEWS:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_12

    move-object/from16 v20, v14

    .end local v14    # "view":Landroid/view/View;
    .local v20, "view":Landroid/view/View;
    if-eqz v0, :cond_a

    if-nez v17, :cond_a

    if-nez v10, :cond_a

    move-object/from16 v21, v2

    :try_start_8
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3491
    move/from16 p2, v4

    move v4, v3

    move/from16 v3, p2

    move-object/from16 v14, v21

    const/16 p2, 0x1

    .end local v4    # "startInputFlags":I
    .local v3, "startInputFlags":I
    :try_start_9
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->isSwitchingBetweenEquivalentNonEditableViews(Landroid/view/inputmethod/ViewFocusParameterInfo;IIII)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v4, v6

    move-object v6, v1

    move v1, v4

    move v4, v3

    .end local v3    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .local v1, "windowFlags":I
    .restart local v4    # "startInputFlags":I
    if-eqz v0, :cond_b

    move/from16 v0, p2

    goto :goto_6

    .line 3598
    .end local v1    # "windowFlags":I
    .end local v4    # "startInputFlags":I
    .end local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v13    # "servedView":Landroid/view/View;
    .end local v15    # "icHandler":Landroid/os/Handler;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v3    # "startInputFlags":I
    .restart local v6    # "windowFlags":I
    :catchall_1
    move-exception v0

    move v4, v6

    move-object v6, v1

    move v1, v4

    move v4, v3

    move v2, v4

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v3, v20

    move v12, v1

    move v11, v5

    move-object v1, v6

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move/from16 v9, p1

    .end local v3    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .restart local v1    # "windowFlags":I
    .restart local v4    # "startInputFlags":I
    goto/16 :goto_15

    .end local v1    # "windowFlags":I
    .restart local v6    # "windowFlags":I
    :catchall_2
    move-exception v0

    move/from16 v29, v6

    move-object v6, v1

    move/from16 v1, v29

    move v2, v4

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v3, v20

    move v12, v1

    move v11, v5

    move-object v1, v6

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move/from16 v9, p1

    .end local v6    # "windowFlags":I
    .restart local v1    # "windowFlags":I
    goto/16 :goto_15

    .line 3488
    .end local v1    # "windowFlags":I
    .restart local v6    # "windowFlags":I
    .restart local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v13    # "servedView":Landroid/view/View;
    .restart local v15    # "icHandler":Landroid/os/Handler;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :cond_a
    move/from16 p2, v6

    move-object v6, v1

    move/from16 v1, p2

    move-object v14, v2

    const/16 p2, 0x1

    .line 3491
    .end local v6    # "windowFlags":I
    .restart local v1    # "windowFlags":I
    :cond_b
    move/from16 v0, v19

    :goto_6
    move/from16 v21, v0

    .line 3494
    .local v21, "canSkip":Z
    :try_start_a
    new-instance v0, Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    move v2, v4

    move v4, v5

    move v5, v1

    .end local v1    # "windowFlags":I
    .restart local v2    # "startInputFlags":I
    .local v4, "softInputMode":I
    .local v5, "windowFlags":I
    :try_start_b
    iget-object v1, v6, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    move/from16 v3, p1

    :try_start_c
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/ViewFocusParameterInfo;-><init>(Landroid/view/inputmethod/EditorInfo;IIII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    move v1, v5

    move v5, v4

    move v4, v2

    .end local v2    # "startInputFlags":I
    .restart local v1    # "windowFlags":I
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    :try_start_d
    iput-object v0, v6, Landroid/view/inputmethod/InputMethodManager;->mPreviousViewFocusParameters:Landroid/view/inputmethod/ViewFocusParameterInfo;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_11

    .line 3496
    if-eqz v21, :cond_c

    .line 3500
    :try_start_e
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    return v19

    .line 3598
    .end local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v13    # "servedView":Landroid/view/View;
    .end local v15    # "icHandler":Landroid/os/Handler;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v21    # "canSkip":Z
    :catchall_3
    move-exception v0

    move v2, v4

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v3, v20

    move v12, v1

    move v11, v5

    move-object v1, v6

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move/from16 v9, p1

    goto/16 :goto_15

    .line 3502
    .restart local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v13    # "servedView":Landroid/view/View;
    .restart local v15    # "icHandler":Landroid/os/Handler;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v21    # "canSkip":Z
    :cond_c
    :try_start_f
    iget-object v0, v11, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_11

    if-eqz v0, :cond_d

    .line 3503
    :try_start_10
    iget-object v0, v11, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    :cond_d
    :try_start_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 3504
    .local v0, "targetUserId":I
    :goto_7
    const-string v2, "IMM.startInputOrWindowGainedFocus"

    move-object/from16 p3, v15

    .end local v15    # "icHandler":Landroid/os/Handler;
    .local p3, "icHandler":Landroid/os/Handler;
    const-wide/16 v14, 0x20

    invoke-static {v14, v15, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3506
    const/16 v22, -0x1

    .line 3507
    .local v22, "startInputSeq":I
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    if-eqz v2, :cond_f

    .line 3509
    :try_start_12
    iget-object v2, v6, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3512
    if-nez v8, :cond_e

    const/4 v3, 0x0

    goto :goto_8

    .line 3513
    :cond_e
    invoke-virtual {v8}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 3514
    :goto_8
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object v15, v12

    :try_start_13
    iget-object v12, v6, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    move-object/from16 v23, v13

    .end local v13    # "servedView":Landroid/view/View;
    .local v23, "servedView":Landroid/view/View;
    iget-boolean v13, v6, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 3509
    move-object/from16 v26, v9

    move-object v9, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v26

    move-object/from16 v26, v15

    move-object/from16 v27, v23

    move-object v15, v7

    move-object/from16 v23, v10

    move-object v7, v11

    move v10, v14

    move v11, v0

    move-object v14, v6

    move v6, v1

    move/from16 v1, p1

    .end local v0    # "targetUserId":I
    .end local v1    # "windowFlags":I
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v3, "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v11, "targetUserId":I
    .local v15, "vh":Landroid/os/Handler;
    .local v18, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v23, "ic":Landroid/view/inputmethod/InputConnection;
    .local v27, "servedView":Landroid/view/View;
    :try_start_14
    invoke-static/range {v1 .. v13}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)I

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move/from16 v22, v0

    move/from16 v9, p1

    move-object v10, v3

    move v12, v6

    move-object v13, v8

    move/from16 v28, v11

    move v8, v4

    move v11, v5

    move/from16 v2, v22

    goto/16 :goto_b

    .line 3598
    .end local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v11    # "targetUserId":I
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v21    # "canSkip":Z
    .end local v22    # "startInputSeq":I
    .end local v27    # "servedView":Landroid/view/View;
    .end local p3    # "icHandler":Landroid/os/Handler;
    :catchall_4
    move-exception v0

    move/from16 v9, p1

    move-object v10, v3

    move v2, v4

    move v11, v5

    move v12, v6

    move-object v1, v14

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    goto/16 :goto_15

    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v6    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v1    # "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v18, "windowGainingFocus":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    move-object v14, v6

    move-object/from16 v23, v10

    move-object/from16 v26, v15

    move-object/from16 v3, v18

    move v6, v1

    move-object v15, v7

    move-object/from16 v18, v9

    move-object v7, v11

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v23, v10

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v3, v18

    move v6, v1

    move-object/from16 v18, v9

    :goto_9
    move/from16 v9, p1

    move-object v10, v3

    move v2, v4

    move v11, v5

    move v12, v6

    move-object v1, v14

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    .end local v1    # "windowFlags":I
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v11    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v15    # "vh":Landroid/os/Handler;
    .local v18, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    goto/16 :goto_15

    .line 3517
    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v6    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v0    # "targetUserId":I
    .restart local v1    # "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v8    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v13    # "servedView":Landroid/view/View;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v18, "windowGainingFocus":Landroid/os/IBinder;
    .restart local v21    # "canSkip":Z
    .restart local v22    # "startInputSeq":I
    .restart local p3    # "icHandler":Landroid/os/Handler;
    :cond_f
    move-object/from16 v23, v10

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-wide/from16 v24, v14

    move-object/from16 v3, v18

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v18, v9

    move-object v7, v11

    move v11, v0

    move v6, v1

    .end local v0    # "targetUserId":I
    .end local v1    # "windowFlags":I
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v10    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v13    # "servedView":Landroid/view/View;
    .restart local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v6    # "windowFlags":I
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v11, "targetUserId":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .local v18, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v27    # "servedView":Landroid/view/View;
    :try_start_15
    iget-object v2, v14, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3520
    if-nez v8, :cond_10

    const/4 v9, 0x0

    goto :goto_a

    .line 3521
    :cond_10
    invoke-virtual {v8}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v0

    move-object v9, v0

    .line 3522
    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v12, v14, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 3517
    move/from16 v1, p1

    :try_start_16
    invoke-static/range {v1 .. v12}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    move v9, v1

    move-object v10, v3

    move v12, v6

    move-object v13, v8

    move/from16 v28, v11

    move v8, v4

    move v11, v5

    .end local v3    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v4    # "startInputFlags":I
    .end local v5    # "softInputMode":I
    .end local v6    # "windowFlags":I
    .local v8, "startInputFlags":I
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .local v12, "windowFlags":I
    .local v13, "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .local v28, "targetUserId":I
    move-object/from16 v16, v0

    move/from16 v2, v22

    .line 3525
    .end local v22    # "startInputSeq":I
    .local v2, "startInputSeq":I
    :goto_b
    :try_start_17
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 3526
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    if-eqz v0, :cond_12

    .line 3529
    if-eqz v23, :cond_11

    .line 3530
    move-object v5, v7

    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v5, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    move v7, v2

    .line 3531
    .local v7, "seqId":I
    :try_start_18
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$6;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move-object/from16 v6, p3

    move-object v1, v14

    move-object/from16 v14, v16

    move-object/from16 v3, v20

    move-object/from16 v4, v23

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "view":Landroid/view/View;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local p3    # "icHandler":Landroid/os/Handler;
    .local v3, "view":Landroid/view/View;
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    .local v6, "icHandler":Landroid/os/Handler;
    .local v14, "res":Lcom/android/internal/inputmethod/InputBindResult;
    :try_start_19
    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodManager$6;-><init>(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    move-object/from16 v29, v4

    move-object v4, v0

    move v0, v7

    move-object v7, v5

    move-object/from16 v5, v29

    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v0, "seqId":I
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_1a
    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 3545
    .end local v0    # "seqId":I
    goto :goto_c

    .line 3598
    .end local v2    # "startInputSeq":I
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v21    # "canSkip":Z
    .end local v27    # "servedView":Landroid/view/View;
    .end local v28    # "targetUserId":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v5, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :catchall_7
    move-exception v0

    move-object v7, v5

    move-object v5, v4

    move v2, v8

    move-object/from16 v16, v14

    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    goto/16 :goto_15

    .end local v3    # "view":Landroid/view/View;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .local v5, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_8
    move-exception v0

    move-object v7, v5

    move-object v1, v14

    move-object/from16 v14, v16

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    move v2, v8

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "view":Landroid/view/View;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    goto/16 :goto_15

    .line 3546
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v2    # "startInputSeq":I
    .restart local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v21    # "canSkip":Z
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v27    # "servedView":Landroid/view/View;
    .restart local v28    # "targetUserId":I
    .restart local p3    # "icHandler":Landroid/os/Handler;
    :cond_11
    move-object/from16 v6, p3

    move-object v1, v14

    move-object/from16 v14, v16

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "view":Landroid/view/View;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local p3    # "icHandler":Landroid/os/Handler;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    .restart local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 3548
    :goto_c
    monitor-exit v26

    return p2

    .line 3552
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local p3    # "icHandler":Landroid/os/Handler;
    :cond_12
    move-object/from16 v6, p3

    move-object v1, v14

    move-object/from16 v14, v16

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "view":Landroid/view/View;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local p3    # "icHandler":Landroid/os/Handler;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "icHandler":Landroid/os/Handler;
    .restart local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    if-nez v14, :cond_13

    .line 3553
    const-string v0, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p3, v2

    .end local v2    # "startInputSeq":I
    .local p3, "startInputSeq":I
    const-string/jumbo v2, "startInputOrWindowGainedFocus must not return null. startInputReason="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3555
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " editorInfo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " startInputFlags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3558
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3553
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    monitor-exit v26
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    return v19

    .line 3598
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v21    # "canSkip":Z
    .end local v27    # "servedView":Landroid/view/View;
    .end local v28    # "targetUserId":I
    .end local p3    # "startInputSeq":I
    :catchall_9
    move-exception v0

    move v2, v8

    move-object/from16 v16, v14

    goto/16 :goto_15

    .line 3561
    .restart local v2    # "startInputSeq":I
    .restart local v6    # "icHandler":Landroid/os/Handler;
    .restart local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .restart local v21    # "canSkip":Z
    .restart local v27    # "servedView":Landroid/view/View;
    .restart local v28    # "targetUserId":I
    :cond_13
    move/from16 p3, v2

    .end local v2    # "startInputSeq":I
    .restart local p3    # "startInputSeq":I
    :try_start_1b
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 3562
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-direct {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->updateInputChannelLocked(Landroid/view/InputChannel;)V

    .line 3563
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 3564
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v0, v14}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    .line 3565
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3566
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v0, :cond_16

    .line 3567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v2, v14, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 3568
    iget-object v2, v14, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 3570
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 3569
    invoke-static {v2}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v2

    .line 3571
    .local v2, "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    if-eqz v2, :cond_14

    .line 3572
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mAccessibilityInputMethodSession:Landroid/util/SparseArray;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    move/from16 p5, v8

    .end local v8    # "startInputFlags":I
    .local p5, "startInputFlags":I
    :try_start_1c
    iget-object v8, v14, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    .line 3573
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 3572
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_e

    .line 3571
    .end local p5    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_14
    move/from16 p5, v8

    .line 3567
    .end local v2    # "wrapper":Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .end local v8    # "startInputFlags":I
    .restart local p5    # "startInputFlags":I
    :goto_e
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p5

    goto :goto_d

    .end local p5    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_15
    move/from16 p5, v8

    .end local v8    # "startInputFlags":I
    .restart local p5    # "startInputFlags":I
    goto :goto_f

    .line 3566
    .end local v0    # "i":I
    .end local p5    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_16
    move/from16 p5, v8

    .line 3577
    .end local v8    # "startInputFlags":I
    .restart local p5    # "startInputFlags":I
    :goto_f
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    goto :goto_10

    .line 3578
    .end local p5    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :cond_17
    move/from16 p5, v8

    .end local v8    # "startInputFlags":I
    .restart local p5    # "startInputFlags":I
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_18

    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, v2, :cond_18

    .line 3579
    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3582
    :cond_18
    :goto_10
    iget v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_0

    goto :goto_11

    .line 3584
    :pswitch_0
    move/from16 v0, p2

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    .line 3585
    invoke-static {}, Landroid/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3586
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v0

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    .line 3589
    :cond_19
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 3592
    :goto_11
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v0, :cond_1a

    .line 3593
    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3594
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 3597
    :cond_1a
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1b

    const/16 v19, 0x1

    .line 3598
    .end local v13    # "servedInputConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v17    # "previouslyServedConnection":Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .end local v21    # "canSkip":Z
    .end local v27    # "servedView":Landroid/view/View;
    .end local v28    # "targetUserId":I
    .end local p3    # "startInputSeq":I
    .local v19, "hasServedView":Z
    :cond_1b
    monitor-exit v26
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 3601
    if-eqz v5, :cond_1c

    if-eqz v14, :cond_1c

    iget-object v0, v14, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_1c

    if-eqz v19, :cond_1c

    .line 3606
    invoke-direct {v1, v5, v7, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    .line 3609
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 3598
    .end local v6    # "icHandler":Landroid/os/Handler;
    .end local v19    # "hasServedView":Z
    :catchall_a
    move-exception v0

    move/from16 v2, p5

    move-object/from16 v16, v14

    goto/16 :goto_15

    .end local p5    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    :catchall_b
    move-exception v0

    move/from16 p5, v8

    move/from16 v2, p5

    move-object/from16 v16, v14

    .end local v8    # "startInputFlags":I
    .restart local p5    # "startInputFlags":I
    goto/16 :goto_15

    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local p5    # "startInputFlags":I
    .restart local v8    # "startInputFlags":I
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_c
    move-exception v0

    move/from16 p5, v8

    move-object v1, v14

    move-object/from16 v14, v16

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    move/from16 v2, p5

    .end local v8    # "startInputFlags":I
    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v20    # "view":Landroid/view/View;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local p5    # "startInputFlags":I
    goto/16 :goto_15

    .end local v10    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v11    # "softInputMode":I
    .end local v12    # "windowFlags":I
    .end local v14    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local p5    # "startInputFlags":I
    .local v3, "windowGainingFocus":Landroid/os/IBinder;
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    .restart local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .restart local v20    # "view":Landroid/view/View;
    .restart local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_d
    move-exception v0

    move v9, v1

    goto :goto_12

    :catchall_e
    move-exception v0

    move/from16 v9, p1

    :goto_12
    move-object v10, v3

    move/from16 p5, v4

    move v11, v5

    move v12, v6

    move-object v1, v14

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    move/from16 v2, p5

    .end local v4    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .end local v20    # "view":Landroid/view/View;
    .end local v23    # "ic":Landroid/view/inputmethod/InputConnection;
    .local v3, "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v10    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v11    # "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local p5    # "startInputFlags":I
    goto/16 :goto_15

    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local p5    # "startInputFlags":I
    .local v2, "startInputFlags":I
    .local v4, "softInputMode":I
    .local v5, "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v18, "windowGainingFocus":Landroid/os/IBinder;
    .restart local v20    # "view":Landroid/view/View;
    :catchall_f
    move-exception v0

    move/from16 p5, v2

    move-object v1, v6

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move v11, v4

    move v12, v5

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move v9, v3

    move-object/from16 v3, v20

    goto :goto_13

    :catchall_10
    move-exception v0

    move/from16 p5, v2

    move-object v1, v6

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v3, v20

    move v11, v4

    move v12, v5

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move/from16 v9, p1

    .end local v2    # "startInputFlags":I
    .end local v4    # "softInputMode":I
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v20    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .local v18, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p5    # "startInputFlags":I
    :goto_13
    goto/16 :goto_15

    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local p5    # "startInputFlags":I
    .restart local v1    # "windowFlags":I
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v18, "windowGainingFocus":Landroid/os/IBinder;
    .restart local v20    # "view":Landroid/view/View;
    :catchall_11
    move-exception v0

    move/from16 p5, v4

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move-object/from16 v3, v20

    move v12, v1

    move v11, v5

    move-object v1, v6

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move/from16 v9, p1

    move/from16 v2, p5

    .end local v1    # "windowFlags":I
    .end local v4    # "startInputFlags":I
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v20    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .local v18, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p5    # "startInputFlags":I
    goto/16 :goto_15

    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local p5    # "startInputFlags":I
    .restart local v4    # "startInputFlags":I
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v14, "view":Landroid/view/View;
    .local v18, "windowGainingFocus":Landroid/os/IBinder;
    :catchall_12
    move-exception v0

    move/from16 p5, v4

    move-object v15, v7

    move-object v7, v11

    move-object/from16 v26, v12

    move v11, v5

    move v12, v6

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v9

    move v9, v3

    move-object v3, v14

    move/from16 v2, p5

    .end local v4    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v14    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .local v18, "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p5    # "startInputFlags":I
    goto/16 :goto_15

    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p5    # "startInputFlags":I
    .restart local v4    # "startInputFlags":I
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .local v8, "windowGainingFocus":Landroid/os/IBinder;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v14    # "view":Landroid/view/View;
    :catchall_13
    move-exception v0

    move/from16 p5, v4

    move-object v15, v7

    move-object/from16 v18, v9

    move-object v7, v11

    move-object/from16 v26, v12

    move v9, v3

    move v11, v5

    move v12, v6

    move-object v5, v10

    move-object v3, v14

    move-object v10, v8

    move/from16 v2, p5

    .end local v4    # "startInputFlags":I
    .end local v6    # "windowFlags":I
    .end local v8    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v14    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .restart local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p5    # "startInputFlags":I
    goto :goto_15

    .line 3418
    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local p5    # "startInputFlags":I
    .restart local v2    # "startInputFlags":I
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v8    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v13, "servedView":Landroid/view/View;
    .restart local v14    # "view":Landroid/view/View;
    :cond_1d
    move-object/from16 v18, v9

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move/from16 v19, v15

    move v9, v3

    move v12, v6

    move-object v15, v7

    move-object v7, v11

    move-object v3, v14

    move v11, v5

    move-object v5, v10

    move-object v10, v8

    .line 3424
    .end local v6    # "windowFlags":I
    .end local v8    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v13    # "servedView":Landroid/view/View;
    .end local v14    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .restart local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local v27    # "servedView":Landroid/view/View;
    :goto_14
    :try_start_1d
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v0, :cond_1e

    const/4 v0, 0x6

    if-ne v9, v0, :cond_1e

    .line 3427
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3428
    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionHandler:Landroid/os/Handler;

    .line 3427
    invoke-direct {v1, v0, v4, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->reportInputConnectionOpened(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/os/Handler;Landroid/view/View;)V

    .line 3431
    :cond_1e
    monitor-exit v26

    return v19

    .line 3598
    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v27    # "servedView":Landroid/view/View;
    .local v5, "softInputMode":I
    .restart local v6    # "windowFlags":I
    .local v7, "vh":Landroid/os/Handler;
    .restart local v8    # "windowGainingFocus":Landroid/os/IBinder;
    .restart local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    .local v11, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local v14    # "view":Landroid/view/View;
    :catchall_14
    move-exception v0

    move-object v15, v7

    move-object/from16 v18, v9

    move-object v7, v11

    move-object/from16 v26, v12

    move v9, v3

    move v11, v5

    move v12, v6

    move-object v5, v10

    move-object v3, v14

    move-object v10, v8

    .end local v6    # "windowFlags":I
    .end local v8    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v9    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .end local v14    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .local v10, "windowGainingFocus":Landroid/os/IBinder;
    .local v11, "softInputMode":I
    .restart local v12    # "windowFlags":I
    .restart local v15    # "vh":Landroid/os/Handler;
    .restart local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    :goto_15
    monitor-exit v26
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    throw v0

    :catchall_15
    move-exception v0

    goto :goto_15

    .line 3370
    .end local v2    # "startInputFlags":I
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v10    # "windowGainingFocus":Landroid/os/IBinder;
    .end local v11    # "softInputMode":I
    .end local v12    # "windowFlags":I
    .end local v15    # "vh":Landroid/os/Handler;
    .end local v16    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v18    # "connectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;>;"
    .restart local p2    # "windowGainingFocus":Landroid/os/IBinder;
    .local p3, "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .local p5, "windowFlags":I
    :catchall_16
    move-exception v0

    move/from16 v4, p3

    move v9, v3

    :goto_16
    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_17

    throw v0

    :catchall_17
    move-exception v0

    goto :goto_16

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "startInputReason"    # I
    .param p2, "focusedView"    # Landroid/view/View;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 1096
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1097
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1098
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1099
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    nop

    .line 1102
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 1101
    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "startInputReason":I
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .local v2, "startInputReason":I
    .local v4, "startInputFlags":I
    .local v5, "softInputMode":I
    .local v6, "windowFlags":I
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result p1

    return p1

    .line 1100
    .end local v2    # "startInputReason":I
    .end local v4    # "startInputFlags":I
    .end local v5    # "softInputMode":I
    .end local v6    # "windowFlags":I
    .restart local p1    # "startInputReason":I
    .restart local p3    # "startInputFlags":I
    .restart local p4    # "softInputMode":I
    .restart local p5    # "windowFlags":I
    :catchall_0
    move-exception v0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object p1, v0

    .end local p1    # "startInputReason":I
    .end local p3    # "startInputFlags":I
    .end local p4    # "softInputMode":I
    .end local p5    # "windowFlags":I
    .restart local v2    # "startInputReason":I
    .restart local v4    # "startInputFlags":I
    .restart local v5    # "softInputMode":I
    .restart local v6    # "windowFlags":I
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method private blacklist startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "handwritingDelegateFlags"    # I

    .line 2789
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "delegatorPackageName":Ljava/lang/String;
    .end local p3    # "handwritingDelegateFlags":I
    .local v1, "view":Landroid/view/View;
    .local v2, "delegatorPackageName":Ljava/lang/String;
    .local v3, "handwritingDelegateFlags":I
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method private blacklist startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "handwritingDelegateFlags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2798
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    const/4 v0, 0x1

    const/4 v8, 0x0

    if-eqz p5, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    move v9, v2

    .line 2802
    .local v9, "useCallback":Z
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 2803
    .local v2, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 2804
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-object v12, v2

    move-object v10, v6

    move-object v11, v7

    .end local v2    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .local v12, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_1

    .line 2803
    .end local v12    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object v12, v2

    .line 2808
    .end local v2    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v12    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v0

    move v13, v2

    .line 2810
    .local v13, "useDelegation":Z
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2811
    iget-object v14, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v14

    .line 2812
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2813
    const-string v0, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring startStylusHandwriting as view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p1

    :try_start_1
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not served."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    invoke-direct {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2816
    monitor-exit v14

    return v8

    .line 2818
    :cond_2
    move-object/from16 v15, p1

    invoke-virtual {v15}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v2, v3, :cond_3

    .line 2819
    const-string v0, "InputMethodManager"

    const-string v2, "Ignoring startStylusHandwriting: View\'s window does not have focus."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    invoke-direct {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2822
    monitor-exit v14

    return v8

    .line 2824
    :cond_3
    if-eqz v13, :cond_6

    .line 2825
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v8, v2

    .line 2826
    .local v8, "executorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Executor;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2827
    .local v2, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    if-eqz v9, :cond_5

    .line 2828
    new-instance v7, Landroid/view/inputmethod/InputMethodManager$5;

    invoke-direct {v7, v1, v8, v2}, Landroid/view/inputmethod/InputMethodManager$5;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 2838
    .local v7, "listener":Lcom/android/internal/inputmethod/IBooleanListener;
    move-object v3, v2

    .end local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .local v3, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2839
    move-object v4, v3

    .end local v3    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .local v4, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2838
    move/from16 v6, p3

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v5, p2

    .end local v4    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .local v16, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2841
    invoke-direct {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->sendFailureCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2843
    :cond_4
    monitor-exit v14

    return v0

    .line 2845
    .end local v7    # "listener":Lcom/android/internal/inputmethod/IBooleanListener;
    .end local v16    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .restart local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    .restart local v16    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2846
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2845
    move-object/from16 v4, p2

    move/from16 v5, p3

    :try_start_2
    invoke-static {v0, v2, v3, v4, v5}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    monitor-exit v14

    return v0

    .line 2850
    .end local v8    # "executorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Executor;>;"
    .end local v16    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    :cond_6
    move-object/from16 v4, p2

    move/from16 v5, p3

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 2851
    monitor-exit v14

    return v8

    .line 2853
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v15, p1

    :goto_2
    move-object/from16 v4, p2

    move/from16 v5, p3

    :goto_3
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method static blacklist tearDownEditMode()V
    .locals 2

    .line 1576
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1581
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 1582
    monitor-exit v0

    .line 1583
    return-void

    .line 1582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1577
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be called only from layoutlib"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateInputChannelLocked(Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/view/InputChannel;

    .line 2138
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->areSameInputChannel(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    return-void

    .line 2145
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_1

    .line 2146
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    .line 2147
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    .line 2148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    .line 2151
    :cond_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 2152
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2154
    :cond_2
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    .line 2155
    return-void
.end method


# virtual methods
.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3173
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    .line 3180
    return-void
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3134
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    const/4 v0, 0x0

    .line 3136
    .local v0, "flags":I
    invoke-static {}, Landroid/view/inputmethod/Flags;->homeScreenHandwritingDelegator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3137
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 3136
    :cond_0
    move v4, v0

    .line 3139
    .end local v0    # "flags":I
    .local v4, "flags":I
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "delegateView":Landroid/view/View;
    .end local p2    # "delegatorPackageName":Ljava/lang/String;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    .local v2, "delegateView":Landroid/view/View;
    .local v3, "delegatorPackageName":Ljava/lang/String;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3141
    return-void
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;)Z
    .locals 2
    .param p1, "delegateView"    # Landroid/view/View;

    .line 3069
    nop

    .line 3070
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3071
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v1

    .line 3069
    invoke-direct {p0, p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .param p1, "delegateView"    # Landroid/view/View;
    .param p2, "delegatorPackageName"    # Ljava/lang/String;

    .line 3100
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    nop

    .line 3102
    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegateFlags()I

    move-result v0

    .line 3101
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist addVirtualStylusIdForTestSession()V
    .locals 2

    .line 3646
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3647
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 3648
    monitor-exit v0

    .line 3649
    return-void

    .line 3648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist checkFocus()V
    .locals 8

    .line 3712
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3713
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    .line 3714
    monitor-exit v1

    return-void

    .line 3716
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocusInternalLocked(ZLandroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3717
    monitor-exit v1

    return-void

    .line 3719
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3720
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputOnWindowFocusGainInternal(ILandroid/view/View;III)Z

    .line 3723
    return-void

    .line 3719
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method greylist closeCurrentInput()V
    .locals 13

    .line 3801
    const/16 v1, 0x26

    .line 3802
    .local v1, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v8

    .line 3804
    .local v8, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v8, v3, v4, v2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3808
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3809
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 3810
    .local v3, "rootView":Landroid/view/View;
    const/4 v0, 0x1

    if-nez v3, :cond_1

    .line 3811
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v8, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3812
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v8, v0, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3814
    const-string v0, "InputMethodManager"

    const-string v4, "No current root view, ignoring closeCurrentInput()"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    monitor-exit v2

    return-void

    .line 3818
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v8, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3820
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3821
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3822
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3823
    .local v0, "vh":Landroid/os/Handler;
    const/16 v6, 0x42

    if-nez v0, :cond_2

    .line 3826
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, v8, v6}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3828
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3830
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    invoke-interface {v7, v8, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3833
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_3

    .line 3839
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 3840
    .local v5, "viewRootImpl":Landroid/view/ViewRootImpl;
    new-instance v6, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda6;

    invoke-direct {v6, v5, v8}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda6;-><init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3842
    nop

    .end local v5    # "viewRootImpl":Landroid/view/ViewRootImpl;
    goto :goto_1

    .line 3843
    :cond_3
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3846
    .end local v0    # "vh":Landroid/os/Handler;
    :goto_1
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "reason":I
    .end local v8    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    :try_start_4
    throw v0

    .line 3848
    .restart local v1    # "reason":I
    .restart local v8    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3850
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    .line 3848
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x26

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    .line 3857
    .end local v3    # "rootView":Landroid/view/View;
    :goto_2
    monitor-exit v2

    .line 3858
    return-void

    .line 3857
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4355
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4356
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4357
    instance-of v0, p1, Landroid/view/KeyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4358
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 4359
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 4360
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    .line 4361
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 4362
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4363
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    .line 4384
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    goto :goto_0

    .line 4371
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v6, v0, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "token":Ljava/lang/Object;
    .end local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v4, "event":Landroid/view/InputEvent;
    .local v5, "token":Ljava/lang/Object;
    .local v7, "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .local v8, "handler":Landroid/os/Handler;
    :try_start_3
    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object p1

    .line 4373
    .local p1, "p":Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4375
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I

    move-result p2

    monitor-exit v1

    return p2

    .line 4379
    :cond_1
    iget-object p2, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4380
    .local p2, "msg":Landroid/os/Message;
    invoke-virtual {p2, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4381
    iget-object p3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {p3, p2}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 4382
    monitor-exit v1

    const/4 p3, -0x1

    return p3

    .line 4384
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v5    # "token":Ljava/lang/Object;
    .end local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local v8    # "handler":Landroid/os/Handler;
    .local p1, "event":Landroid/view/InputEvent;
    .local p2, "token":Ljava/lang/Object;
    .restart local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "token":Ljava/lang/Object;
    .end local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .restart local v4    # "event":Landroid/view/InputEvent;
    .restart local v5    # "token":Ljava/lang/Object;
    .restart local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local v8    # "handler":Landroid/os/Handler;
    monitor-exit v1

    .line 4385
    const/4 p1, 0x0

    return p1

    .line 4384
    .end local v4    # "event":Landroid/view/InputEvent;
    .end local v5    # "token":Ljava/lang/Object;
    .end local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local v8    # "handler":Landroid/os/Handler;
    .restart local p1    # "event":Landroid/view/InputEvent;
    .restart local p2    # "token":Ljava/lang/Object;
    .restart local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :catchall_1
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "event":Landroid/view/InputEvent;
    .end local p2    # "token":Ljava/lang/Object;
    .end local p3    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .restart local v4    # "event":Landroid/view/InputEvent;
    .restart local v5    # "token":Ljava/lang/Object;
    .restart local v7    # "callback":Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;
    .restart local v8    # "handler":Landroid/os/Handler;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public whitelist dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 4404
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4405
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 4406
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 4407
    return-void

    .line 4410
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4411
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_0

    .line 4421
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 4411
    :cond_1
    const/4 v2, 0x0

    .line 4412
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_0
    if-nez v2, :cond_2

    .line 4413
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 4414
    .local v3, "servedView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 4415
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    move-object v2, v4

    .line 4418
    .end local v3    # "servedView":Landroid/view/View;
    :cond_2
    if-eqz v2, :cond_3

    .line 4419
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 4421
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_3
    monitor-exit v1

    .line 4422
    return-void

    .line 4421
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 2233
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2234
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 2236
    return-void

    .line 2239
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2240
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2241
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2242
    monitor-exit v1

    return-void

    .line 2245
    :cond_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2246
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2247
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 2249
    :cond_2
    monitor-exit v1

    .line 2250
    return-void

    .line 2249
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z
    .locals 5
    .param p1, "inputConnection"    # Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .param p2, "textSnapshot"    # Landroid/view/inputmethod/TextSnapshot;
    .param p3, "sessionId"    # I

    .line 3283
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3284
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3288
    :cond_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3290
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3292
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/EditorInfo;->createCopyInternal()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 3293
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 3294
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 3295
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionStart()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 3296
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCompositionEnd()I

    move-result v3

    iput v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 3297
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getCursorCapsMode()I

    move-result v3

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 3298
    invoke-virtual {p2}, Landroid/view/inputmethod/TextSnapshot;->getSurroundingText()Landroid/view/inputmethod/SurroundingText;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V

    .line 3299
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v3, v1, v4, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 3301
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 3302
    invoke-virtual {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v3

    .line 3303
    .local v3, "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v3, p3}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-direct {p0, v4}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 3305
    monitor-exit v0

    return v2

    .line 3286
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "accessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    .line 3306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 5222
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 5223
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5224
    monitor-exit v0

    return-void

    .line 5227
    :cond_0
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5228
    const-wide v1, 0x10b00000002L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 5229
    .local v1, "token":J
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeId:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5230
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5231
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5232
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5233
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000006L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5234
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000007L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5235
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5236
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_1

    .line 5237
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ViewRootImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5239
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v3, :cond_2

    .line 5240
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5242
    :cond_2
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-eqz v3, :cond_3

    .line 5243
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/ImeInsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5245
    :cond_3
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v3, :cond_4

    .line 5246
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    const-wide v4, 0x10b00000008L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5248
    :cond_4
    if-eqz p2, :cond_5

    .line 5249
    const-wide v3, 0x10b00000009L

    invoke-virtual {p1, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 5251
    .end local v1    # "token":J
    :cond_5
    monitor-exit v0

    .line 5252
    return-void

    .line 5251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist finishInputLocked()V
    .locals 3

    .line 2189
    const/4 v0, 0x0

    .line 2190
    .local v0, "clearedView":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 2191
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2192
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2193
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 2194
    invoke-static {}, Landroid/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2195
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v2

    .line 2196
    invoke-virtual {v2, v0}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    .line 2199
    :cond_0
    if-eqz v0, :cond_1

    .line 2204
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 2205
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 2206
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 2208
    :cond_1
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mReportInputConnectionOpenedRunner:Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    .line 2210
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    .line 2211
    return-void
.end method

.method public blacklist finishTrackingPendingImeVisibilityRequests()V
    .locals 0

    .line 4642
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->finishTrackingPendingImeVisibilityRequests()V

    .line 4643
    return-void
.end method

.method public whitelist getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .line 1887
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1886
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentInputMethodInfoAsUser(Landroid/os/UserHandle;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1901
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    nop

    .line 1903
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1902
    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .line 4681
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
    .locals 1

    .line 1049
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 4983
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    return v0
.end method

.method public whitelist getEnabledInputMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1918
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledInputMethodListAsUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1937
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1955
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1957
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1954
    invoke-static {v0, p2, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1980
    nop

    .line 1981
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1982
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1980
    invoke-static {v0, p2, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFallbackContextFromServedView()Landroid/content/Context;
    .locals 3

    .line 850
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 852
    monitor-exit v0

    return-object v2

    .line 854
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getImeOnBackInvokedDispatcher()Landroid/window/ImeOnBackInvokedDispatcher;
    .locals 1

    .line 3730
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-object v0
.end method

.method public whitelist getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1759
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1852
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInputMethodListAsUser(II)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1872
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getInputMethodWindowVisibleHeight()I
    .locals 1

    .line 4792
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v0

    return v0
.end method

.method public whitelist getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .line 4973
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .line 4758
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 4761
    .local v0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4763
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4764
    .local v1, "numEnabledImes":I
    const/4 v2, 0x0

    .local v2, "imiIndex":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4765
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4766
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 4768
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 4769
    .local v5, "subtypeCount":I
    const/4 v6, 0x0

    .local v6, "subtypeIndex":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 4770
    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 4771
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v8, "voice"

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4772
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    return-object v8

    .line 4769
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4764
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v5    # "subtypeCount":I
    .end local v6    # "subtypeIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4776
    .end local v2    # "imiIndex":I
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public blacklist hasActiveInputConnection(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1066
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1067
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 1071
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isAssociatedWith(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 1067
    return v1

    .line 1073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist hasPendingImeVisibilityRequests()Z
    .locals 1

    .line 4629
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hasPendingImeVisibilityRequests()Z

    move-result v0

    return v0
.end method

.method public whitelist hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4314
    const/16 v0, 0x20

    .line 4315
    .local v0, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/16 v5, 0x20

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 4317
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v5}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 4319
    return-void
.end method

.method public blacklist hideSoftInputFromServerForTest()V
    .locals 0

    .line 2752
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInputFromServerForTest()V

    .line 2753
    return-void
.end method

.method public blacklist hideSoftInputFromView(Landroid/view/View;I)Z
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 2703
    move-object/from16 v1, p0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2704
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v7, v0

    .line 2705
    .local v7, "isFocusedAndWindowFocused":Z
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 2706
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    .line 2707
    .local v0, "hasServedByInputMethod":Z
    if-nez v7, :cond_1

    if-nez v0, :cond_1

    .line 2710
    monitor-exit v8

    return v2

    .line 2713
    :cond_1
    const/16 v9, 0x27

    .line 2714
    .local v9, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    .line 2715
    invoke-static/range {p1 .. p1}, Landroid/view/inputmethod/ImeTracker;->isFromUser(Landroid/view/View;)Z

    move-result v5

    .line 2714
    const/16 v6, 0x27

    const/4 v10, 0x5

    const/4 v11, 0x2

    invoke-interface {v4, v11, v10, v6, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v4

    move-object v13, v4

    .line 2716
    .local v13, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v13, v10, v6, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2718
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    const-string v5, "InputMethodManager#hideSoftInputFromView"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 2721
    if-nez v0, :cond_2

    .line 2722
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v13, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2723
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v4

    new-instance v5, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v13, v3, v5}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 2725
    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring hideSoftInputFromView() as view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not served."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    monitor-exit v8

    return v2

    .line 2729
    :cond_2
    move-object/from16 v10, p1

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, v13, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2731
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2732
    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x27

    move/from16 v3, p2

    move-object v6, v13

    .end local v13    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v2

    .end local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v13    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    monitor-exit v8

    return v2

    .line 2735
    :cond_3
    iget-object v11, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2736
    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    iget-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 2735
    const/4 v15, 0x0

    const/16 v16, 0x27

    move/from16 v14, p2

    move/from16 v17, v2

    invoke-static/range {v11 .. v17}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v2

    monitor-exit v8

    return v2

    .line 2739
    .end local v0    # "hasServedByInputMethod":Z
    .end local v9    # "reason":I
    .end local v13    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 2564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public whitelist hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2603
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v1, "windowToken":Landroid/os/IBinder;
    .local v2, "flags":I
    .local v3, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p1

    return p1
.end method

.method public whitelist hideStatusIcon(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2003
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 2004
    return-void
.end method

.method public whitelist invalidateInput(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3332
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3333
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 3334
    return-void

    .line 3337
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3338
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 3341
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput()V

    .line 3342
    monitor-exit v1

    .line 3343
    return-void

    .line 3339
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 3342
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist isAcceptingText()Z
    .locals 2

    .line 2088
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2089
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2090
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2091
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isActive()Z
    .locals 2

    .line 2063
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2064
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2065
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2066
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isActive(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2048
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2049
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 2053
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2054
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2055
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return v2

    .line 2056
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist isConnectionlessStylusHandwritingAvailable()Z
    .locals 4

    .line 1820
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1821
    const/4 v0, 0x0

    return v0

    .line 1823
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1824
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v1, :cond_1

    .line 1825
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$4;

    const-string v2, "cache_key.system_server.connectionless_stylus_handwriting"

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Landroid/view/inputmethod/InputMethodManager$4;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1834
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mConnectionlessStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCurrentRootView(Landroid/view/View;)Z
    .locals 3
    .param p1, "attachedView"    # Landroid/view/View;

    .line 2078
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2079
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2080
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r isCursorAnchorInfoEnabled()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4072
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4073
    :try_start_0
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4075
    .local v1, "isImmediate":Z
    :goto_0
    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 4077
    .local v4, "isMonitoring":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    monitor-exit v0

    return v2

    .line 4078
    .end local v1    # "isImmediate":Z
    .end local v4    # "isMonitoring":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isFullscreenMode()Z
    .locals 2

    .line 2038
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2039
    :try_start_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    monitor-exit v0

    return v1

    .line 2040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isInputMethodPickerShown()Z
    .locals 1

    .line 4590
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isInputMethodPickerShownForTest()Z

    move-result v0

    return v0
.end method

.method public whitelist isInputMethodSuppressingSpellChecker()Z
    .locals 2

    .line 2098
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 2099
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-boolean v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mIsInputMethodSuppressingSpellChecker:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isStylusHandwritingAvailable()Z
    .locals 1

    .line 1771
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->isStylusHandwritingAvailableAsUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStylusHandwritingAvailableAsUser(Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1793
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1794
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1795
    const/4 v1, 0x0

    return v1

    .line 1798
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1799
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    if-nez v2, :cond_1

    .line 1800
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$3;

    const-string v3, "cache_key.system_server.stylus_handwriting"

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4, v3}, Landroid/view/inputmethod/InputMethodManager$3;-><init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    .line 1809
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mStylusHandwritingAvailableCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1810
    .local v2, "isAvailable":Z
    monitor-exit v1

    .line 1811
    return v2

    .line 1810
    .end local v2    # "isAvailable":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4059
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3930
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x5

    const/16 v3, 0x1c

    invoke-virtual {v0, p2, v2, v3, v1}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3933
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#notifyImeHidden"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3935
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3936
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 3937
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    move-object v4, p1

    move-object v5, p2

    goto :goto_0

    .line 3944
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3946
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x1c

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v4, "windowToken":Landroid/os/IBinder;
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :try_start_1
    invoke-static/range {v3 .. v9}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    .line 3949
    monitor-exit v1

    .line 3950
    return-void

    .line 3936
    .end local v4    # "windowToken":Landroid/os/IBinder;
    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_1
    move-object v4, p1

    move-object v5, p2

    .line 3938
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "windowToken":Landroid/os/IBinder;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3939
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLatency()Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;

    move-result-object p1

    new-instance p2, Landroid/view/InsetsController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Landroid/view/InsetsController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v5, v2, p2}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 3941
    monitor-exit v1

    return-void

    .line 3949
    .end local v4    # "windowToken":Landroid/os/IBinder;
    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_0
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object p1, v0

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "windowToken":Landroid/os/IBinder;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1
.end method

.method public greylist notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .locals 2
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2029
    const-string v0, "InputMethodManager"

    const-string v1, "notifySuggestionPicked() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    return-void
.end method

.method public greylist-max-p notifyUserAction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4749
    const-string v0, "InputMethodManager"

    const-string v1, "notifyUserAction() is a hidden method, which is now just a stub method that does nothing.  Leave comments in b.android.com/114740982 if your  application still depends on the previous behavior of this method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    return-void
.end method

.method public blacklist onImeSwitchButtonClickFromSystem(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 4604
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onImeSwitchButtonClickFromSystem(I)V

    .line 4605
    return-void
.end method

.method public whitelist prepareStylusHandwritingDelegation(Landroid/view/View;)V
    .locals 1
    .param p1, "delegatorView"    # Landroid/view/View;

    .line 3000
    nop

    .line 3001
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3000
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 3002
    return-void
.end method

.method public whitelist prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "delegatePackageName"    # Ljava/lang/String;

    .line 3030
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3034
    nop

    .line 3035
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3036
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3037
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 3040
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 3042
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3044
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3040
    invoke-static {v1, v2, p2, v3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 3045
    return-void
.end method

.method public blacklist registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .locals 2
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 3866
    if-eqz p1, :cond_0

    .line 3870
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3871
    :try_start_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 3872
    monitor-exit v0

    .line 3873
    return-void

    .line 3872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3867
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 2
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2017
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "registerSuggestionSpansForNotification() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return-void
.end method

.method public blacklist removeImeSurface(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 3958
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3959
    :try_start_0
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 3960
    monitor-exit v0

    .line 3961
    return-void

    .line 3960
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist reportPerceptible(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 870
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 871
    return-void
.end method

.method public blacklist requestImeShow(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3903
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3904
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3905
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 3906
    .local v3, "servedView":Landroid/view/View;
    const/16 v0, 0x25

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_0

    move-object v4, p2

    goto :goto_0

    .line 3912
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3915
    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p2

    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v4, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 3917
    monitor-exit v1

    const/4 p2, 0x1

    return p2

    .line 3906
    .end local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_1
    move-object v4, p2

    .line 3907
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    invoke-interface {p2, v4, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3909
    monitor-exit v1

    const/4 p2, 0x0

    return p2

    .line 3918
    .end local v3    # "servedView":Landroid/view/View;
    .end local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_0
    move-exception v0

    move-object v4, p2

    move-object p2, v0

    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v4    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_1
.end method

.method public whitelist restartInput(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 3253
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3254
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 3255
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3256
    return-void

    .line 3259
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3260
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 3261
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3262
    monitor-exit v2

    return-void

    .line 3265
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 3266
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 3269
    return-void

    .line 3266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public whitelist sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 4179
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4180
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 4181
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4182
    return-void

    .line 4185
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4186
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4187
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_2

    .line 4188
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4192
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4193
    monitor-exit v1

    .line 4194
    return-void

    .line 4189
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    .line 4193
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4912
    nop

    .line 4913
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4912
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 4914
    return-void
.end method

.method public whitelist setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 10
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4699
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4700
    const-string v0, "InputMethodManager"

    const-string v1, "System process should not call setCurrentInputMethodSubtype() because almost always it is a bug under multi-user / multi-profile environment. Consider directly interacting with InputMethodManagerService via LocalServices."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    return v2

    .line 4706
    :cond_0
    if-nez p1, :cond_1

    .line 4708
    return v2

    .line 4710
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4711
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 4712
    return v2

    .line 4714
    :cond_2
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 4716
    return v2

    .line 4718
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4719
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "default_input_method"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4721
    .local v3, "imeId":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    .line 4723
    return v2

    .line 4725
    :cond_4
    nop

    .line 4727
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 4726
    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 4728
    .local v4, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 4729
    .local v6, "numSubtypes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 4730
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4731
    .local v8, "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8, p1}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4732
    nop

    .line 4733
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 4732
    const-string/jumbo v9, "selected_input_method_subtype"

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4734
    return v5

    .line 4729
    .end local v8    # "enabledSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4737
    .end local v7    # "i":I
    :cond_6
    return v2
.end method

.method public whitelist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypeHashCodes"    # [I

    .line 4962
    nop

    .line 4963
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 4962
    invoke-static {p1, p2, v0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 4964
    return-void
.end method

.method public whitelist setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4218
    if-nez p1, :cond_7

    .line 4222
    if-nez p2, :cond_0

    .line 4223
    return-void

    .line 4225
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "InputMethodManager"

    if-ne v0, v1, :cond_1

    .line 4226
    const-string v0, "System process should not be calling setInputMethod() because almost always it is a bug under multi-user / multi-profile environment. Consider interacting with InputMethodManagerService directly via LocalServices."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    return-void

    .line 4232
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4233
    .local v0, "fallbackContext":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 4234
    return-void

    .line 4236
    :cond_2
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 4238
    return-void

    .line 4240
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 4241
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 4242
    .local v3, "numImis":I
    const/4 v4, 0x0

    .line 4243
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 4244
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 4245
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4246
    const/4 v4, 0x1

    .line 4247
    goto :goto_1

    .line 4243
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4250
    .end local v5    # "i":I
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 4251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setInputMethod(null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") because the specified id not found in enabled IMEs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    return-void

    .line 4255
    :cond_6
    const-string v5, "The undocumented behavior that setInputMethod() accepts null token when the caller has WRITE_SECURE_SETTINGS is deprecated. This behavior may be completely removed in a future version.  Update secure settings directly instead."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4260
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "selected_input_method_subtype"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4262
    const-string v5, "default_input_method"

    invoke-static {v2, v5, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4263
    return-void

    .line 4265
    .end local v0    # "fallbackContext":Landroid/content/Context;
    .end local v1    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "numImis":I
    .end local v4    # "found":Z
    :cond_7
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;)V

    .line 4266
    return-void
.end method

.method public whitelist setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4292
    if-nez p1, :cond_0

    .line 4293
    const-string v0, "InputMethodManager"

    const-string/jumbo v1, "setInputMethodAndSubtype() does not accept null token on Android Q and later."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    return-void

    .line 4297
    :cond_0
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4298
    return-void
.end method

.method public blacklist setRequestCursorUpdateDisplayIdCheck(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 4818
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4819
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .locals 2
    .param p1, "timeout"    # J

    .line 3660
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3661
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    invoke-static {v1, p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 3662
    monitor-exit v0

    .line 3663
    return-void

    .line 3662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r setUpdateCursorAnchorInfoMode(I)V
    .locals 2
    .param p1, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4090
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4091
    :try_start_0
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    .line 4092
    monitor-exit v0

    .line 4093
    return-void

    .line 4092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4873
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 4874
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod()Z

    move-result v0

    .line 4873
    return v0
.end method

.method public blacklist shouldShowImeSwitcherButtonForTest()Z
    .locals 1

    .line 4617
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->shouldShowImeSwitcherButtonForTest()Z

    move-result v0

    return v0
.end method

.method public whitelist showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    .line 4652
    const/4 v0, 0x0

    .line 4653
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4654
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    .line 4655
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object v0, v2

    .line 4657
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4658
    if-nez v0, :cond_1

    .line 4659
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 4660
    .local v1, "appContext":Landroid/content/Context;
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 4661
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mDisplayId:I

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 4664
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4665
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4669
    const-string v2, "input_method_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4671
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4672
    return-void

    .line 4657
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist showInputMethodPicker()V
    .locals 2

    .line 4550
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 4551
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V

    .line 4552
    monitor-exit v0

    .line 4553
    return-void

    .line 4552
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist showInputMethodPickerFromSystem(ZI)V
    .locals 1
    .param p1, "showAuxiliarySubtypes"    # Z
    .param p2, "displayId"    # I

    .line 4564
    if-eqz p1, :cond_0

    .line 4565
    const/4 v0, 0x1

    goto :goto_0

    .line 4566
    :cond_0
    const/4 v0, 0x2

    :goto_0
    nop

    .line 4567
    .local v0, "mode":I
    invoke-static {v0, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showInputMethodPickerFromSystem(II)V

    .line 4568
    return-void
.end method

.method public whitelist showSoftInput(Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I

    .line 2316
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2317
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2318
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2321
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    return v1
.end method

.method public whitelist showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2393
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4336
    const/16 v0, 0x36

    .line 4337
    .local v0, "reason":I
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/16 v5, 0x36

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 4339
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    invoke-virtual {v2, v1, p2, v5}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 4341
    return-void
.end method

.method public greylist-max-p showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 16
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2488
    move-object/from16 v1, p0

    iget-object v7, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 2489
    const/4 v0, 0x1

    .line 2490
    .local v0, "reason":I
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 2493
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const-string v2, "InputMethodManager"

    const-string/jumbo v4, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using androidx.appcompat.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2497
    .local v2, "rootView":Landroid/view/View;
    :goto_0
    if-nez v2, :cond_1

    .line 2498
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2499
    const-string v4, "InputMethodManager"

    const-string v5, "No current root view, ignoring showSoftInputUnchecked()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    monitor-exit v7

    return-void

    .line 2503
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2504
    const/4 v6, 0x1

    move/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 2505
    monitor-exit v7

    return-void

    .line 2508
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 2512
    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 2513
    iget-object v8, v1, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    .line 2515
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 2518
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getLastClickToolType()I

    move-result v12

    iget-boolean v15, v1, Landroid/view/inputmethod/InputMethodManager;->mAsyncShowHideMethodEnabled:Z

    .line 2513
    const/4 v14, 0x1

    move/from16 v11, p1

    move-object/from16 v13, p2

    move-object v10, v3

    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v10, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-static/range {v8 .. v15}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    .line 2522
    .end local v10    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    nop

    .end local v0    # "reason":I
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    monitor-exit v7

    .line 2523
    return-void

    .line 2522
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1992
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 1993
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 1994
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwriting(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2879
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v1, "view":Landroid/view/View;
    .local v2, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v5, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v6, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2881
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .locals 8
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2941
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2943
    .local v4, "delegatorPackageName":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "delegatorView":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "delegatePackageName":Ljava/lang/String;
    .end local p4    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v2, "delegatorView":Landroid/view/View;
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v5, "delegatePackageName":Ljava/lang/String;
    .local v6, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2945
    return-void
.end method

.method public whitelist startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .locals 8
    .param p1, "delegatorView"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    .line 2909
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2910
    .local v4, "delegatorPackageName":Ljava/lang/String;
    move-object v5, v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "delegatorView":Landroid/view/View;
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    .local v2, "delegatorView":Landroid/view/View;
    .local v3, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v6, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/view/inputmethod/ConnectionlessHandwritingCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingInternal(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    .line 2912
    return-void
.end method

.method public whitelist startStylusHandwriting(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2774
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;I)Z

    .line 2776
    return-void
.end method

.method public whitelist switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4835
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToPreviousInputMethod()Z

    move-result v0

    return v0
.end method

.method public whitelist switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4853
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v0

    .line 4854
    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->switchToNextInputMethod(Z)Z

    move-result v0

    .line 4853
    return v0
.end method

.method public whitelist toggleSoftInput(II)V
    .locals 11
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3224
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3227
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 3228
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v0

    .line 3229
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3230
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 3231
    .local v3, "rootInsets":Landroid/view/WindowInsets;
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3232
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x19

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move v7, p2

    .end local p2    # "hideFlags":I
    .local v7, "hideFlags":I
    :try_start_1
    invoke-direct/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;ILandroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_0

    .line 3231
    .end local v7    # "hideFlags":I
    .restart local p2    # "hideFlags":I
    :cond_0
    move-object v5, p0

    move v7, p2

    .line 3236
    .end local p2    # "hideFlags":I
    .restart local v7    # "hideFlags":I
    const/16 p2, 0x18

    invoke-direct {p0, v0, p1, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;I)Z

    goto :goto_0

    .line 3229
    .end local v3    # "rootInsets":Landroid/view/WindowInsets;
    .end local v7    # "hideFlags":I
    .restart local p2    # "hideFlags":I
    :cond_1
    move-object v5, p0

    move v7, p2

    .line 3240
    .end local v0    # "view":Landroid/view/View;
    .end local p2    # "hideFlags":I
    .restart local v7    # "hideFlags":I
    :goto_0
    monitor-exit v1

    .line 3241
    return-void

    .line 3240
    .end local v7    # "hideFlags":I
    .restart local p2    # "hideFlags":I
    :catchall_0
    move-exception v0

    move-object v5, p0

    move v7, p2

    move-object p2, v0

    .end local p2    # "hideFlags":I
    .restart local v7    # "hideFlags":I
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_1
.end method

.method public whitelist toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "showFlags"    # I
    .param p3, "hideFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3198
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManager#toggleSoftInputFromWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 3201
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3202
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v1

    .line 3203
    .local v1, "servedView":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 3206
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 3207
    .end local v1    # "servedView":Landroid/view/View;
    monitor-exit v0

    .line 3208
    return-void

    .line 3204
    .restart local v1    # "servedView":Landroid/view/View;
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3207
    .end local v1    # "servedView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V
    .locals 2
    .param p1, "imeInsetsConsumer"    # Landroid/view/ImeInsetsSourceConsumer;

    .line 3881
    if-eqz p1, :cond_1

    .line 3885
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 3886
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    if-ne v1, p1, :cond_0

    .line 3887
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;

    .line 3889
    :cond_0
    monitor-exit v0

    .line 3890
    return-void

    .line 3889
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3882
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImeInsetsSourceConsumer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateCursor(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4103
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4104
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 4105
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v2, "view":Landroid/view/View;
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4106
    return-void

    .line 4109
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "left":I
    .restart local p3    # "top":I
    .restart local p4    # "right":I
    .restart local p5    # "bottom":I
    :cond_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "left":I
    .restart local v4    # "top":I
    .restart local v5    # "right":I
    .restart local v6    # "bottom":I
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4110
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p1

    .line 4111
    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p2, :cond_3

    .line 4112
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 4116
    :cond_1
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 4117
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4120
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p2, p2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursor(Landroid/graphics/Rect;)V

    .line 4121
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4123
    :cond_2
    monitor-exit p1

    .line 4124
    return-void

    .line 4113
    :cond_3
    :goto_0
    monitor-exit p1

    return-void

    .line 4123
    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public whitelist updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 4131
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 4135
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4136
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 4137
    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4138
    return-void

    .line 4141
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4142
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4143
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_5

    .line 4144
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 4149
    :cond_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    .line 4150
    invoke-virtual {v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->resetHasPendingImmediateCursorAnchorInfoUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 4151
    .local v2, "isImmediate":Z
    :goto_0
    if-nez v2, :cond_4

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4158
    monitor-exit v1

    return-void

    .line 4161
    :cond_4
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v3, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4162
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 4163
    .end local v2    # "isImmediate":Z
    monitor-exit v1

    .line 4164
    return-void

    .line 4145
    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    .line 4163
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4132
    .end local v0    # "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    :goto_2
    return-void
.end method

.method public whitelist updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # I
    .param p3, "text"    # Landroid/view/inputmethod/ExtractedText;

    .line 2254
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2255
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2256
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2257
    return-void

    .line 2260
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 2261
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2262
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2263
    monitor-exit v1

    return-void

    .line 2266
    :cond_1
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2267
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v2, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 2269
    :cond_2
    monitor-exit v1

    .line 2270
    return-void

    .line 2269
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist updateSelection(Landroid/view/View;IIII)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "candidatesStart"    # I
    .param p5, "candidatesEnd"    # I

    .line 3977
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3978
    .local v1, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 3979
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "selStart":I
    .end local p3    # "selEnd":I
    .end local p4    # "candidatesStart":I
    .end local p5    # "candidatesEnd":I
    .local v2, "view":Landroid/view/View;
    .local v3, "selStart":I
    .local v4, "selEnd":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 3980
    return-void

    .line 3983
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "selStart":I
    .end local v4    # "selEnd":I
    .end local v5    # "candidatesStart":I
    .end local v6    # "candidatesEnd":I
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "selStart":I
    .restart local p3    # "selEnd":I
    .restart local p4    # "candidatesStart":I
    .restart local p5    # "candidatesEnd":I
    :cond_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "selStart":I
    .end local p3    # "selEnd":I
    .end local p4    # "candidatesStart":I
    .end local p5    # "candidatesEnd":I
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "selStart":I
    .restart local v4    # "selEnd":I
    .restart local v5    # "candidatesStart":I
    .restart local v6    # "candidatesEnd":I
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3984
    iget-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter p1

    .line 3985
    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p2, :cond_5

    .line 3986
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result p2

    if-nez p2, :cond_1

    move v7, v4

    move-object v4, p0

    goto/16 :goto_2

    .line 3990
    :cond_1
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->hasPendingInvalidation()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3991
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 4011
    :catchall_0
    move-exception v0

    move-object p2, v0

    move v7, v4

    move-object v4, p0

    goto/16 :goto_3

    .line 3994
    :cond_2
    :try_start_2
    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-ne p2, v3, :cond_4

    :try_start_3
    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne p2, v4, :cond_4

    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne p2, v5, :cond_4

    iget p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq p2, v6, :cond_3

    goto :goto_0

    :cond_3
    move v7, v4

    move-object v4, p0

    goto :goto_1

    .line 4002
    :cond_4
    :goto_0
    :try_start_4
    iget-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object p2, p2, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move v7, v4

    .end local v4    # "selEnd":I
    .local v7, "selEnd":I
    :try_start_5
    iget v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move v8, v5

    .end local v5    # "candidatesStart":I
    .local v8, "candidatesStart":I
    :try_start_6
    iget v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move v9, v6

    move v6, v3

    move-object v3, p2

    .end local v3    # "selStart":I
    .local v6, "selStart":I
    .local v9, "candidatesEnd":I
    :try_start_7
    invoke-virtual/range {v3 .. v9}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelection(IIIIII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v3, v6

    move v4, v7

    move v5, v8

    move v6, v9

    .line 4004
    .end local v7    # "selEnd":I
    .end local v8    # "candidatesStart":I
    .end local v9    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .restart local v4    # "selEnd":I
    .restart local v5    # "candidatesStart":I
    .local v6, "candidatesEnd":I
    move v8, v5

    move v5, v3

    .end local v3    # "selStart":I
    .local v5, "selStart":I
    .restart local v8    # "candidatesStart":I
    :try_start_8
    new-instance v3, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v7, v8

    move v8, v6

    move v6, v4

    move-object v4, p0

    .end local v4    # "selEnd":I
    .local v6, "selEnd":I
    .local v7, "candidatesStart":I
    .local v8, "candidatesEnd":I
    :try_start_9
    invoke-direct/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/InputMethodManager;IIII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object p2, v3

    move v3, v5

    move v5, v7

    move v7, v6

    move v6, v8

    .end local v8    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    .local v7, "selEnd":I
    :try_start_a
    invoke-direct {p0, p2}, Landroid/view/inputmethod/InputMethodManager;->forAccessibilitySessionsLocked(Ljava/util/function/Consumer;)V

    .line 4006
    iput v3, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 4007
    iput v7, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 4008
    iput v5, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 4009
    iput v6, v4, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 4011
    :goto_1
    monitor-exit p1

    .line 4012
    return-void

    .line 4011
    .end local v3    # "selStart":I
    .local v5, "selStart":I
    .local v6, "selEnd":I
    .local v7, "candidatesStart":I
    .restart local v8    # "candidatesEnd":I
    :catchall_1
    move-exception v0

    move v3, v5

    move v5, v7

    move v7, v6

    move v6, v8

    move-object p2, v0

    .end local v8    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .local v5, "candidatesStart":I
    .local v6, "candidatesEnd":I
    .local v7, "selEnd":I
    goto :goto_3

    .end local v3    # "selStart":I
    .end local v7    # "selEnd":I
    .restart local v4    # "selEnd":I
    .local v5, "selStart":I
    .local v8, "candidatesStart":I
    :catchall_2
    move-exception v0

    move v7, v4

    move v3, v5

    move v5, v8

    move-object v4, p0

    move-object p2, v0

    .end local v4    # "selEnd":I
    .end local v8    # "candidatesStart":I
    .restart local v3    # "selStart":I
    .local v5, "candidatesStart":I
    .restart local v7    # "selEnd":I
    goto :goto_3

    .end local v3    # "selStart":I
    .end local v5    # "candidatesStart":I
    .local v6, "selStart":I
    .restart local v8    # "candidatesStart":I
    .restart local v9    # "candidatesEnd":I
    :catchall_3
    move-exception v0

    move-object v4, p0

    move v3, v6

    move v5, v8

    move v6, v9

    move-object p2, v0

    .end local v8    # "candidatesStart":I
    .end local v9    # "candidatesEnd":I
    .restart local v3    # "selStart":I
    .restart local v5    # "candidatesStart":I
    .local v6, "candidatesEnd":I
    goto :goto_3

    .end local v5    # "candidatesStart":I
    .restart local v8    # "candidatesStart":I
    :catchall_4
    move-exception v0

    move-object v4, p0

    move v5, v8

    move-object p2, v0

    .end local v8    # "candidatesStart":I
    .restart local v5    # "candidatesStart":I
    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v4, p0

    goto :goto_4

    .line 3985
    .end local v7    # "selEnd":I
    .restart local v4    # "selEnd":I
    :cond_5
    move v7, v4

    move-object v4, p0

    .line 3987
    .end local v4    # "selEnd":I
    .restart local v7    # "selEnd":I
    :goto_2
    monitor-exit p1

    return-void

    .line 4011
    .end local v7    # "selEnd":I
    .restart local v4    # "selEnd":I
    :catchall_6
    move-exception v0

    move v7, v4

    move-object v4, p0

    move-object p2, v0

    .end local v4    # "selEnd":I
    .restart local v7    # "selEnd":I
    :goto_3
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw p2

    :catchall_7
    move-exception v0

    :goto_4
    move-object p2, v0

    goto :goto_3
.end method

.method public whitelist viewClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4027
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->getFallbackInputMethodManagerIfNecessary(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4028
    .local v0, "fallbackImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 4029
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 4030
    return-void

    .line 4035
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 4036
    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;

    move-result-object v2

    .line 4037
    .local v2, "servedView":Landroid/view/View;
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->getNextServedViewLocked()Landroid/view/View;

    move-result-object v3

    .line 4038
    .local v3, "nextServedView":Landroid/view/View;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4039
    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 4040
    .local v4, "focusChanged":Z
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 4041
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    .line 4042
    :try_start_1
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hasServedByInputMethodLocked(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_3

    .line 4043
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->isImeSessionAvailableLocked()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 4047
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurBindState:Landroid/view/inputmethod/InputMethodManager$BindState;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClicked(Z)V

    .line 4048
    monitor-exit v5

    .line 4049
    return-void

    .line 4044
    :cond_3
    :goto_1
    monitor-exit v5

    return-void

    .line 4048
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4038
    .end local v2    # "servedView":Landroid/view/View;
    .end local v3    # "nextServedView":Landroid/view/View;
    .end local v4    # "focusChanged":Z
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public greylist-max-q windowDismissed(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appWindowToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3695
    return-void
.end method
