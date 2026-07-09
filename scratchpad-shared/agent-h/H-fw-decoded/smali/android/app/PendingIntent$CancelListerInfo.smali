.class final Landroid/app/PendingIntent$CancelListerInfo;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelListerInfo"
.end annotation


# instance fields
.field private final mCancelListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/PendingIntent$CancelListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field final synthetic this$0:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancelListeners(Landroid/app/PendingIntent$CancelListerInfo;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCancelListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCanceled(Landroid/app/PendingIntent$CancelListerInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCanceled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCanceled(Landroid/app/PendingIntent$CancelListerInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCanceled:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Landroid/app/PendingIntent$CancelListerInfo;->this$0:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 146
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/app/PendingIntent$CancelListerInfo;->mCancelListeners:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PendingIntent$CancelListerInfo;-><init>(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/app/PendingIntent$CancelListerInfo;->this$0:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/PendingIntent;->-$$Nest$mnotifyCancelListeners(Landroid/app/PendingIntent;)V

    .line 159
    return-void
.end method
