.class public final synthetic Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/AssetManager$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/AssetManager$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/AssetManager$Builder;

    check-cast p1, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager$Builder;->addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;

    return-void
.end method
