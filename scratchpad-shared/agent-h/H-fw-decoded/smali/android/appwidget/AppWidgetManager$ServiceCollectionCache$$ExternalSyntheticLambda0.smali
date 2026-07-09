.class public final synthetic Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;->f$0:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    check-cast p1, Landroid/content/Intent$FilterComparison;

    invoke-static {v0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->$r8$lambda$ZDcQMTsLKFfCK1gXzOZS0Db8mUU(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    move-result-object p1

    return-object p1
.end method
