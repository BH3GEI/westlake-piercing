.class public Lcom/android/internal/app/ChooserGridLayoutManager;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "ChooserGridLayoutManager.java"


# instance fields
.field private blacklist mAllAppListGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mShortcutGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mVerticalScrollEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 43
    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 44
    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 71
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    .line 74
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 43
    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 44
    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 86
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    .line 89
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 43
    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 44
    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 58
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method

.method private blacklist createShortcutsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "rowCount":I
    const/4 v1, 0x0

    .line 174
    .local v1, "columnCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 176
    .local v3, "row":Landroid/view/View;
    const/4 v4, 0x0

    .line 177
    .local v4, "rowColumnCount":I
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    .local v5, "rowGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 178
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 179
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 180
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 182
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 185
    const/4 v4, 0x1

    .line 186
    goto :goto_2

    .line 178
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 191
    .end local v5    # "rowGroup":Landroid/view/ViewGroup;
    .end local v6    # "j":I
    :cond_1
    :goto_2
    if-lez v4, :cond_2

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 174
    .end local v3    # "row":Landroid/view/View;
    .end local v4    # "rowColumnCount":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createSuggestedAppsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "columnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 202
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 201
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    return-object v1
.end method

.method private blacklist readGroupTitles(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const v0, 0x10409b3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 93
    const v0, 0x1040a1b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 94
    const v0, 0x1040143

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist canScrollVertically()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 167
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 167
    :goto_1
    return v0
.end method

.method public blacklist onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/widget/GridLayoutManager;->onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 100
    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 101
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 107
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 160
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 132
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->announceShortcutsAndSuggestedAppsLegacy()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102050a

    if-ne v0, v1, :cond_0

    .line 134
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    .line 136
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ChooserGridLayoutManager;->createShortcutsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_3

    .line 137
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020279

    if-ne v0, v1, :cond_5

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Lcom/android/internal/widget/RecyclerView$Adapter;
    :goto_0
    instance-of v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    if-eqz v2, :cond_2

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    goto :goto_1

    .line 142
    :cond_2
    nop

    :goto_1
    nop

    .line 143
    .local v1, "gridAdapter":Lcom/android/internal/app/ChooserListAdapter;
    const-class v2, Landroid/widget/GridView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 144
    move-object v2, p3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/internal/app/ChooserGridLayoutManager;->createSuggestedAppsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 145
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 146
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    .line 154
    .end local v0    # "adapter":Lcom/android/internal/widget/RecyclerView$Adapter;
    .end local v1    # "gridAdapter":Lcom/android/internal/app/ChooserListAdapter;
    :cond_5
    :goto_3
    return-void
.end method

.method blacklist setVerticalScrollEnabled(Z)V
    .locals 0
    .param p1, "verticalScrollEnabled"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 118
    return-void
.end method
