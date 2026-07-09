.class public final synthetic Landroid/app/search/SearchSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/search/SearchSession$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSession$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/SearchSession$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/app/search/SearchSession$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$Callback;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Landroid/app/search/SearchSession$Callback;->onTargetsAvailable(Ljava/util/List;)V

    return-void
.end method
