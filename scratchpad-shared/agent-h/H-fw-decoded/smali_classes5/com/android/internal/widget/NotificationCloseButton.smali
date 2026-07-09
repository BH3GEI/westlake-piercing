.class public Lcom/android/internal/widget/NotificationCloseButton;
.super Landroid/widget/ImageView;
.source "NotificationCloseButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mForegroundColor:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method private blacklist updateColors()V
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mBackgroundColor:I

    if-eqz v0, :cond_0

    .line 79
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mBackgroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCloseButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mForegroundColor:I

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mForegroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCloseButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/NotificationCloseButton;->mContext:Landroid/content/Context;

    const v1, 0x10401e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCloseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 67
    .local v0, "notificationCloseButtonSupported":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationCloseButton;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 73
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 100
    iput p1, p0, Lcom/android/internal/widget/NotificationCloseButton;->mBackgroundColor:I

    .line 101
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationCloseButton;->updateColors()V

    .line 102
    return-void
.end method

.method public blacklist setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 91
    iput p1, p0, Lcom/android/internal/widget/NotificationCloseButton;->mForegroundColor:I

    .line 92
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationCloseButton;->updateColors()V

    .line 93
    return-void
.end method
