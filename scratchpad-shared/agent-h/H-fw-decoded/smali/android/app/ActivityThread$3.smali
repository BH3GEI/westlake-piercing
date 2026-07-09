.class Landroid/app/ActivityThread$3;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/IBinderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7792
    iput-object p1, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$3;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionError(IIII)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "code"    # I
    .param p3, "flags"    # I
    .param p4, "err"    # I

    .line 7795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7796
    .local v0, "now":J
    iget-object v2, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-$$Nest$fgetmBinderCallbackLast(Landroid/app/ActivityThread;)J

    move-result-wide v2

    const-wide/16 v4, 0x2774

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 7797
    const-string v2, "ActivityThread"

    const-string v3, "Too many transaction errors, throttling freezer binder callback."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7798
    return-void

    .line 7800
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v0, v1}, Landroid/app/ActivityThread;->-$$Nest$fputmBinderCallbackLast(Landroid/app/ActivityThread;J)V

    .line 7802
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread$3;->val$mgr:Landroid/app/IActivityManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/IActivityManager;->frozenBinderTransactionDetected(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7805
    nop

    .line 7806
    return-void

    .line 7803
    :catch_0
    move-exception v2

    .line 7804
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method
