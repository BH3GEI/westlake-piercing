.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;


# instance fields
.field private final blacklist mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

.field private final blacklist mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final blacklist mRouter:Landroid/media/MediaRouter;


# direct methods
.method public static synthetic blacklist $r8$lambda$ny9FfsOHzkhKTFP04BfvAdzzgyU(Lcom/android/internal/app/MediaRouteControllerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MediaRouteControllerDialog;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    .line 56
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 57
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 58
    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 64
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDisconnectButtonClick()V

    return-void
.end method


# virtual methods
.method public blacklist dismissView()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 122
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onAttachedToWindow()V

    .line 82
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10405da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/app/MediaRouteControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 66
    .local v5, "customView":Landroid/view/View;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/MediaRouteControllerDialog;->setView(Landroid/view/View;IIII)V

    .line 67
    iget-object v1, v4, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/MediaRouteControllerContentManager;->bindViews(Landroid/view/View;)V

    .line 68
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10202ba

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "customPanelView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 75
    :cond_0
    iget-object v2, v4, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v2}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 76
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDetachedFromWindow()V

    .line 87
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 88
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 92
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 94
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 95
    return v2
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 102
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 104
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMediaRouteDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method

.method public blacklist setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method
