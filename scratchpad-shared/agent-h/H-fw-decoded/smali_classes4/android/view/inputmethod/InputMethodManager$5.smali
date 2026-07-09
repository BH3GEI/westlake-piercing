.class Landroid/view/inputmethod/InputMethodManager$5;
.super Lcom/android/internal/inputmethod/IBooleanListener$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackRef:Ljava/lang/ref/WeakReference;

.field final synthetic blacklist val$executorRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2828
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$executorRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/Consumer;Z)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "value"    # Z

    .line 2834
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 2831
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$executorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 2832
    .local v0, "executor":Ljava/util/concurrent/Executor;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 2833
    .local v1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2834
    new-instance v2, Landroid/view/inputmethod/InputMethodManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/view/inputmethod/InputMethodManager$5$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2836
    :cond_0
    return-void
.end method
