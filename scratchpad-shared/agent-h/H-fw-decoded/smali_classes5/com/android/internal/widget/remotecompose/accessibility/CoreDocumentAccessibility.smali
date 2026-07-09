.class public Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;
.super Ljava/lang/Object;
.source "CoreDocumentAccessibility.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;


# instance fields
.field private final blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field private final blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p2, "remoteContext"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 55
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 56
    return-void
.end method

.method static blacklist componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .locals 3
    .param p0, "root"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 244
    nop

    .line 245
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;-><init>()V

    .line 247
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isClickAction(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 140
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 2
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 279
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_0

    .line 280
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v0

    return v0

    .line 283
    :cond_0
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_1

    .line 284
    const/4 v0, 0x0

    return v0

    .line 287
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 288
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    .line 289
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 287
    return v0
.end method

.method static blacklist isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 3
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 265
    return v1

    .line 268
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    .line 270
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 268
    :cond_2
    return v1
.end method

.method static blacklist isModifierWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .locals 1
    .param p0, "modifier"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 274
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 275
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0
.end method

.method private static blacklist isScrollBackwardAction(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 128
    const/16 v0, 0x2000

    if-eq p0, v0, :cond_1

    const v0, 0x1020038

    if-eq p0, v0, :cond_1

    const v0, 0x1020039

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist isScrollForwardAction(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 134
    const/16 v0, 0x1000

    if-eq p0, v0, :cond_1

    const v0, 0x102003a

    if-eq p0, v0, :cond_1

    const v0, 0x102003b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist isShowOnScreenAction(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 124
    const v0, 0x1020036

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$componentStream$3(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "op"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 249
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    .line 250
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$findComponentById$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 1
    .param p0, "virtualViewId"    # I
    .param p1, "op"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$modifiersStream$4(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .locals 1
    .param p0, "it"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 259
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return v0
.end method

.method static synthetic blacklist lambda$modifiersStream$5(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "it"    # Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 260
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$1(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .locals 1
    .param p0, "it"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 206
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    .line 208
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;
    .locals 1
    .param p0, "i"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 209
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    return-object v0
.end method

.method static blacklist modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;-><init>()V

    .line 259
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;-><init>()V

    .line 260
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method private blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 144
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 146
    .local v0, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    const-class v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 148
    .local v1, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)Z

    .line 150
    const/4 v2, 0x1

    return v2

    .line 154
    .end local v0    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v1    # "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 3
    .param p1, "virtualViewId"    # I

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 68
    .local v0, "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;-><init>(I)V

    .line 73
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 72
    return-object v1

    .line 69
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 61
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->RootId:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .locals 6
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 80
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 87
    .local v0, "result":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 88
    .local v2, "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v3, :cond_1

    .line 89
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    .line 91
    .local v3, "semantics":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 92
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 95
    .end local v2    # "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    .end local v3    # "semantics":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
    :cond_1
    goto :goto_0

    .line 97
    :cond_2
    return-object v0
.end method

.method public blacklist performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 101
    const/4 v0, 0x1

    .line 104
    .local v0, "needsRepaint":Z
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isClickAction(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 105
    :cond_0
    return v1

    .line 106
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isScrollForwardAction(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    const/16 v4, -0x1f4

    invoke-virtual {p0, v1, p1, v4}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 117
    :goto_0
    if-eqz v0, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 107
    :cond_3
    return v2

    .line 108
    :cond_4
    :try_start_2
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isScrollBackwardAction(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    const/16 v4, 0x1f4

    invoke-virtual {p0, v1, p1, v4}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    .line 117
    :goto_1
    if-eqz v0, :cond_6

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 109
    :cond_6
    return v2

    .line 110
    :cond_7
    :try_start_3
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isShowOnScreenAction(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 111
    :cond_8
    return v1

    .line 113
    :cond_9
    const/4 v0, 0x0

    .line 114
    nop

    .line 117
    if-eqz v0, :cond_a

    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 114
    :cond_a
    return v3

    .line 117
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_b

    .line 118
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    .line 120
    :cond_b
    throw v1
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 3
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "pixels"    # I

    .line 166
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    .line 168
    .local v0, "scrollable":Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result v1

    return v1

    .line 172
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;
    .locals 3
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;"
        }
    .end annotation

    .line 196
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    .local v0, "modifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;-><init>()V

    .line 204
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;-><init>()V

    .line 209
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 210
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 203
    return-object v1
.end method

.method public blacklist semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;
    .locals 5
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "useUnmergedTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    .line 221
    .local v0, "mergeMode":Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-eq v0, v1, :cond_5

    if-nez p2, :cond_1

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 226
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 229
    .local v3, "child":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_3

    .line 230
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_2
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 234
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v4

    .line 233
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    .end local v3    # "child":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_3
    :goto_1
    goto :goto_0

    .line 240
    :cond_4
    return-object v1

    .line 223
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist stringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
