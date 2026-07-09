.class public Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "PlatformRemoteComposeTouchHelper.java"


# instance fields
.field private final blacklist mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "remoteDocA11y"    # Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "applier":Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;, "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 48
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    .line 49
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;

    .line 50
    return-void
.end method

.method public static blacklist forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;
    .locals 3
    .param p0, "player"    # Landroid/view/View;
    .param p1, "coreDocument"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 54
    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;

    move-object v2, p0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;

    .line 57
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;-><init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;-><init>(Landroid/view/View;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;-><init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method protected blacklist getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    .local v0, "root":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 79
    const/high16 v1, -0x80000000

    return v1

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected blacklist getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->RootId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 98
    .local v0, "rootComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    .line 99
    invoke-interface {v1, v0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    sget-object v1, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->RootId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    .line 104
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 106
    .local v3, "child":I
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 107
    .end local v3    # "child":I
    goto :goto_0

    .line 108
    :cond_2
    return-void
.end method

.method protected blacklist onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 149
    .local v0, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z

    move-result v1

    .line 152
    .local v1, "performed":Z
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->invalidateRoot()V

    .line 156
    :cond_0
    return v1

    .line 158
    .end local v1    # "performed":Z
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 142
    return-void
.end method

.method public blacklist onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 115
    .local v0, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v1

    .line 118
    .local v1, "mergeMode":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 120
    sget-object v3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v1, v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    .line 122
    invoke-interface {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "childViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 125
    .local v4, "childView":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, p2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 126
    .end local v4    # "childView":Ljava/lang/Integer;
    goto :goto_0

    .line 129
    .end local v2    # "childViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    .line 130
    invoke-interface {v2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "semantics":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;>;"
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v3, v4, p2, v0, v2}, Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;->applyComponent(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V

    .line 133
    sget-object v3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v1, v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    .line 135
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, "childViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;

    invoke-interface {v4, p2, v3}, Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;->addChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 139
    .end local v3    # "childViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method
