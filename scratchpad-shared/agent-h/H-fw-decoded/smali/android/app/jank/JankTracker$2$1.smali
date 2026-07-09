.class Landroid/app/jank/JankTracker$2$1;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/jank/JankTracker$2;->onWindowAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/jank/JankTracker$2;


# direct methods
.method constructor <init>(Landroid/app/jank/JankTracker$2;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/jank/JankTracker$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Landroid/app/jank/JankTracker$2$1;->this$1:Landroid/app/jank/JankTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Landroid/app/jank/JankTracker$2$1;->this$1:Landroid/app/jank/JankTracker$2;

    iget-object v0, v0, Landroid/app/jank/JankTracker$2;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmDecorView(Landroid/app/jank/JankTracker;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankTracker$2$1;->this$1:Landroid/app/jank/JankTracker$2;

    iget-object v1, v1, Landroid/app/jank/JankTracker$2;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v1}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmOnWindowAttachListener(Landroid/app/jank/JankTracker;)Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 103
    iget-object v0, p0, Landroid/app/jank/JankTracker$2$1;->this$1:Landroid/app/jank/JankTracker$2;

    iget-object v0, v0, Landroid/app/jank/JankTracker$2;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$mregisterForJankData(Landroid/app/jank/JankTracker;)V

    .line 104
    return-void
.end method
