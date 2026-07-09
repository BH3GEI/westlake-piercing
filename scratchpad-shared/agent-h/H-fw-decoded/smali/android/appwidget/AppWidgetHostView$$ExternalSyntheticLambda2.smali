.class public final synthetic Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;->f$0:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;->f$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->onDefaultViewClicked(Landroid/view/View;)V

    return-void
.end method
