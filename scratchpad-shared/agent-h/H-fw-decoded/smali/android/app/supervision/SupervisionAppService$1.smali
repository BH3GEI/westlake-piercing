.class Landroid/app/supervision/SupervisionAppService$1;
.super Landroid/app/supervision/ISupervisionAppService$Stub;
.source "SupervisionAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/SupervisionAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/supervision/SupervisionAppService;


# direct methods
.method constructor <init>(Landroid/app/supervision/SupervisionAppService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/supervision/SupervisionAppService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-direct {p0}, Landroid/app/supervision/ISupervisionAppService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled()V
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-virtual {v0}, Landroid/app/supervision/SupervisionAppService;->onDisabled()V

    .line 39
    return-void
.end method

.method public onEnabled()V
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/app/supervision/SupervisionAppService$1;->this$0:Landroid/app/supervision/SupervisionAppService;

    invoke-virtual {v0}, Landroid/app/supervision/SupervisionAppService;->onEnabled()V

    .line 34
    return-void
.end method
