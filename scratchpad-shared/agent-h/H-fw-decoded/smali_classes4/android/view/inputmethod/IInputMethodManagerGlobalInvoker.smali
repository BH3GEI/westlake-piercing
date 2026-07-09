.class final Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;
.super Ljava/lang/Object;
.source "IInputMethodManagerGlobalInvoker.java"


# static fields
.field private static final blacklist TIMEOUT_MS:J = 0x2710L

.field private static blacklist sCurStartInputSeq:I

.field private static volatile blacklist sServiceCache:Lcom/android/internal/view/IInputMethodManager;

.field private static volatile blacklist sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 76
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    .line 77
    const/4 v0, 0x0

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 649
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 650
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 651
    const/4 v0, 0x0

    return v0

    .line 654
    :cond_0
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "userId":I
    .end local p2    # "delegatePackageName":Ljava/lang/String;
    .end local p3    # "delegatorPackageName":Ljava/lang/String;
    .end local p4    # "flags":I
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "userId":I
    .local v4, "delegatePackageName":Ljava/lang/String;
    .local v5, "delegatorPackageName":Ljava/lang/String;
    .local v6, "flags":I
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 656
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 657
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)Z
    .locals 8
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/internal/inputmethod/IBooleanListener;

    .line 670
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 671
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 672
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_0
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "userId":I
    .end local p2    # "delegatePackageName":Ljava/lang/String;
    .end local p3    # "delegatorPackageName":Ljava/lang/String;
    .end local p4    # "flags":I
    .end local p5    # "callback":Lcom/android/internal/inputmethod/IBooleanListener;
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "userId":I
    .local v4, "delegatePackageName":Ljava/lang/String;
    .local v5, "delegatorPackageName":Ljava/lang/String;
    .local v6, "flags":I
    .local v7, "callback":Lcom/android/internal/inputmethod/IBooleanListener;
    :try_start_0
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/view/IInputMethodManager;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    nop

    .line 680
    const/4 p0, 0x1

    return p0

    .line 677
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 678
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "fallbackInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p2, "untrustedDisplayId"    # I

    .line 223
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 224
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    nop

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 701
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 702
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 703
    return-void

    .line 706
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    nop

    .line 710
    return-void

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist advanceAngGetStartInputSequenceNumber()I
    .locals 1

    .line 428
    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0
.end method

.method static blacklist finishTrackingPendingImeVisibilityRequests()V
    .locals 5

    .line 845
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 846
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 847
    return-void

    .line 850
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 851
    .local v1, "completionSignal":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IImeTracker;->finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V

    .line 852
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    nop

    .line 858
    .end local v1    # "completionSignal":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 854
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 3
    .param p0, "userId"    # I

    .line 238
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 239
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 240
    const/4 v1, 0x0

    return-object v1

    .line 243
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "userId"    # I

    .line 510
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 511
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 512
    const/4 v1, 0x0

    return-object v1

    .line 515
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getEnabledInputMethodList(I)Ljava/util/List;
    .locals 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 275
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 279
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    nop

    .line 281
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 283
    :cond_1
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 3
    .param p0, "imiId"    # Ljava/lang/String;
    .param p1, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 296
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 300
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 4

    .line 863
    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;

    .line 864
    .local v0, "trackerService":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_2

    .line 865
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 866
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 867
    return-object v2

    .line 871
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v3

    move-object v0, v3

    .line 872
    if-nez v0, :cond_1

    .line 873
    return-object v2

    .line 876
    :cond_1
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sTrackerServiceCache:Lcom/android/internal/inputmethod/IImeTracker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    goto :goto_0

    .line 877
    :catch_0
    move-exception v2

    .line 878
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 881
    .end local v1    # "service":Lcom/android/internal/view/IInputMethodManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-object v0
.end method

.method static blacklist getInputMethodList(II)Ljava/util/List;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 255
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 259
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->useInputMethodInfoSafeList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    nop

    .line 261
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v1

    .line 260
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->extractFrom(Lcom/android/internal/inputmethod/InputMethodInfoSafeList;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 263
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 553
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 554
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 555
    const/4 v1, 0x0

    return v1

    .line 558
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p0, "userId"    # I

    .line 311
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 312
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 313
    const/4 v1, 0x0

    return-object v1

    .line 316
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist getService()Lcom/android/internal/view/IInputMethodManager;
    .locals 3

    .line 90
    sget-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 91
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_2

    .line 92
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->isInEditModeInternal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 93
    return-object v2

    .line 95
    :cond_0
    nop

    .line 96
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    return-object v2

    .line 100
    :cond_1
    sput-object v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sServiceCache:Lcom/android/internal/view/IInputMethodManager;

    .line 102
    :cond_2
    return-object v0
.end method

.method private static blacklist handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteException;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 113
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist hasPendingImeVisibilityRequests()Z
    .locals 3

    .line 831
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 832
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 833
    const/4 v1, 0x1

    return v1

    .line 836
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IImeTracker;->hasPendingImeVisibilityRequests()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 837
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 9
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I
    .param p6, "async"    # Z

    .line 344
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 345
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 346
    const/4 v0, 0x0

    return v0

    .line 349
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p3    # "flags":I
    .end local p4    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local p5    # "reason":I
    .end local p6    # "async":Z
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "windowToken":Landroid/os/IBinder;
    .local v4, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "flags":I
    .local v6, "resultReceiver":Landroid/os/ResultReceiver;
    .local v7, "reason":I
    .local v8, "async":Z
    :try_start_0
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 351
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 352
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist hideSoftInputFromServerForTest()V
    .locals 3

    .line 360
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 361
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputFromServerForTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    nop

    .line 369
    return-void

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isAvailable()Z
    .locals 1

    .line 84
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist isImeTraceEnabled()Z
    .locals 3

    .line 186
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 187
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 188
    const/4 v1, 0x0

    return v1

    .line 191
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isImeTraceEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isInputMethodPickerShownForTest()Z
    .locals 3

    .line 465
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 466
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 467
    const/4 v1, 0x0

    return v1

    .line 470
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->isInputMethodPickerShownForTest()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 3
    .param p0, "userId"    # I
    .param p1, "connectionless"    # Z

    .line 687
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 688
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 689
    const/4 v1, 0x0

    return v1

    .line 692
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 3
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p1, "phase"    # I

    .line 775
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 776
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 777
    return-void

    .line 780
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    nop

    .line 784
    return-void

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 816
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 817
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 818
    return-void

    .line 821
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    nop

    .line 825
    return-void

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 3
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p1, "phase"    # I

    .line 761
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 762
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 763
    return-void

    .line 766
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    nop

    .line 770
    return-void

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 803
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 804
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 805
    return-void

    .line 808
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    nop

    .line 812
    return-void

    .line 809
    :catch_0
    move-exception v1

    .line 810
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onImeSwitchButtonClickFromSystem(I)V
    .locals 3
    .param p0, "displayId"    # I

    .line 481
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 482
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 483
    return-void

    .line 486
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->onImeSwitchButtonClickFromSystem(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 490
    return-void

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onProgress(Landroid/os/IBinder;I)V
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "phase"    # I

    .line 747
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 748
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 749
    return-void

    .line 752
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/inputmethod/IImeTracker;->onProgress(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    nop

    .line 756
    return-void

    .line 753
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3
    .param p0, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 789
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    .line 790
    .local v0, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v0, :cond_0

    .line 791
    return-void

    .line 794
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IImeTracker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    nop

    .line 798
    return-void

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "origin"    # I
    .param p4, "reason"    # I
    .param p5, "fromUser"    # Z

    .line 732
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v1

    .line 733
    .local v1, "service":Lcom/android/internal/inputmethod/IImeTracker;
    if-nez v1, :cond_0

    .line 735
    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Token;->empty(Ljava/lang/String;)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "uid":I
    .end local p2    # "type":I
    .end local p3    # "origin":I
    .end local p4    # "reason":I
    .end local p5    # "fromUser":Z
    .local v2, "tag":Ljava/lang/String;
    .local v3, "uid":I
    .local v4, "type":I
    .local v5, "origin":I
    .local v6, "reason":I
    .local v7, "fromUser":Z
    :try_start_0
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/inputmethod/IImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 739
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 740
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;

    .line 630
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 631
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 632
    return-void

    .line 635
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    nop

    .line 640
    return-void

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist removeImeSurface(ILjava/util/function/Consumer;)V
    .locals 2
    .param p0, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 210
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurface(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static blacklist removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 3
    .param p0, "windowToken"    # Landroid/os/IBinder;

    .line 579
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 580
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 581
    return-void

    .line 584
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    nop

    .line 588
    return-void

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 3
    .param p0, "windowToken"    # Landroid/os/IBinder;
    .param p1, "perceptible"    # Z

    .line 566
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 567
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    nop

    .line 575
    return-void

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 3
    .param p0, "imeId"    # Ljava/lang/String;
    .param p1, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .param p2, "userId"    # I

    .line 525
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 526
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 527
    return-void

    .line 530
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    nop

    .line 534
    return-void

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 3
    .param p0, "imeId"    # Ljava/lang/String;
    .param p1, "subtypeHashCodes"    # [I
    .param p2, "userId"    # I

    .line 540
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 541
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 542
    return-void

    .line 545
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    nop

    .line 549
    return-void

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "timeout"    # J

    .line 716
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 717
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 718
    return-void

    .line 721
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    nop

    .line 725
    return-void

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist shouldShowImeSwitcherButtonForTest()Z
    .locals 3

    .line 495
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 496
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 497
    const/4 v1, 0x0

    return v1

    .line 500
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->shouldShowImeSwitcherButtonForTest()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "auxiliarySubtypeMode"    # I

    .line 435
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 436
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    nop

    .line 444
    return-void

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showInputMethodPickerFromSystem(II)V
    .locals 3
    .param p0, "auxiliarySubtypeMode"    # I
    .param p1, "displayId"    # I

    .line 451
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 452
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 453
    return-void

    .line 456
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromSystem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    nop

    .line 460
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 10
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "lastClickToolType"    # I
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p6, "reason"    # I
    .param p7, "async"    # Z

    .line 327
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 328
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 329
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)Z
    .locals 8
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p1, "userId"    # I
    .param p2, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "delegatorPackageName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 611
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 612
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 613
    const/4 v0, 0x0

    return v0

    .line 616
    :cond_0
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p0    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p1    # "userId":I
    .end local p2    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p3    # "delegatePackageName":Ljava/lang/String;
    .end local p4    # "delegatorPackageName":Ljava/lang/String;
    .end local p5    # "callback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .local v2, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "userId":I
    .local v4, "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .local v5, "delegatePackageName":Ljava/lang/String;
    .local v6, "delegatorPackageName":Ljava/lang/String;
    .local v7, "callback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    :try_start_0
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/view/IInputMethodManager;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    nop

    .line 621
    const/4 p0, 0x1

    return p0

    .line 618
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 619
    .local p0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static blacklist startImeTrace(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p0, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 149
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 157
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static blacklist startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 14
    .param p0, "startInputReason"    # I
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "remoteInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p8, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p9, "unverifiedTargetSdkVersion"    # I
    .param p10, "userId"    # I
    .param p11, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 383
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 384
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 385
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 388
    :cond_0
    move v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    :try_start_0
    invoke-interface/range {v1 .. v13}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)I
    .locals 16
    .param p0, "startInputReason"    # I
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "startInputFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "remoteInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p8, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p9, "unverifiedTargetSdkVersion"    # I
    .param p10, "userId"    # I
    .param p11, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p12, "useAsyncShowHideMethod"    # Z

    .line 412
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 413
    .local v1, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v1, :cond_0

    .line 414
    const/4 v0, -0x1

    return v0

    .line 417
    :cond_0
    nop

    .line 420
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->advanceAngGetStartInputSequenceNumber()I

    move-result v14

    .line 417
    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v15, p12

    invoke-interface/range {v1 .. v15}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    nop

    .line 424
    sget v0, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->sCurStartInputSeq:I

    return v0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "protoDump"    # [B
    .param p1, "source"    # I
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p3, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 130
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 131
    return-void

    .line 134
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->startProtoDump([BILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p3}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static blacklist startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 3
    .param p0, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 592
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 593
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 594
    return-void

    .line 597
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/internal/view/IInputMethodManager;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    nop

    .line 601
    return-void

    .line 598
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static blacklist stopImeTrace(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p0, "exceptionHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/RemoteException;>;"
    invoke-static {}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->getService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 168
    .local v0, "service":Lcom/android/internal/view/IInputMethodManager;
    if-nez v0, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1, p0}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->handleRemoteExceptionOrRethrow(Landroid/os/RemoteException;Ljava/util/function/Consumer;)V

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
