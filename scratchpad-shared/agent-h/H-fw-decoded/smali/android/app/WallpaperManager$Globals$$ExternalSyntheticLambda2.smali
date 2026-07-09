.class public final synthetic Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/WallpaperManager$OnColorsChangedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;->f$0:Landroid/app/WallpaperManager$OnColorsChangedListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$$ExternalSyntheticLambda2;->f$0:Landroid/app/WallpaperManager$OnColorsChangedListener;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/app/WallpaperManager$Globals;->lambda$removeOnColorsChangedListener$0(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
