.class public final synthetic Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/AppSearchShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/AppSearchShortcutInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/AppSearchShortcutInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/AppSearchShortcutInfo;

    check-cast p1, [B

    invoke-static {v0, p1}, Landroid/content/pm/AppSearchShortcutInfo;->$r8$lambda$kireZJaXE6bkXyhT89ZMVSaoMx4(Landroid/content/pm/AppSearchShortcutInfo;[B)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
