.class public final synthetic Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/jank/JankDataProcessor;


# direct methods
.method public synthetic constructor <init>(Landroid/app/jank/JankDataProcessor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/app/jank/JankDataProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/app/jank/JankDataProcessor;

    check-cast p1, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    invoke-static {v0, p1}, Landroid/app/jank/JankDataProcessor;->$r8$lambda$FFZk-evpWDaWxTXpMFQcJeDVL_4(Landroid/app/jank/JankDataProcessor;Landroid/app/jank/JankDataProcessor$PendingJankStat;)V

    return-void
.end method
