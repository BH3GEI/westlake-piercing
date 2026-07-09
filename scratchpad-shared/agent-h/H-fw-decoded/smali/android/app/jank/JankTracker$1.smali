.class Landroid/app/jank/JankTracker$1;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Landroid/view/SurfaceControl$OnJankDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/JankTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/jank/JankTracker;


# direct methods
.method constructor <init>(Landroid/app/jank/JankTracker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/jank/JankTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJankDataAvailable(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "jankData":Ljava/util/List;, "Ljava/util/List<Landroid/view/SurfaceControl$JankData;>;"
    iget-object v0, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v1}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmActivityName(Landroid/app/jank/JankTracker;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v2}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmAppUid(Landroid/app/jank/JankTracker;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/jank/JankDataProcessor;->processJankData(Ljava/util/List;Ljava/lang/String;I)V

    .line 91
    return-void
.end method
