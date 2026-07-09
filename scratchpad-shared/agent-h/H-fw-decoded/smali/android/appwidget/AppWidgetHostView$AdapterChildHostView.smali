.class public Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterChildHostView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .locals 1

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method
