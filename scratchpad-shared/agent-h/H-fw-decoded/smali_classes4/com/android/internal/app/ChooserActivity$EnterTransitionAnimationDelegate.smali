.class Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnterTransitionAnimationDelegate"
.end annotation


# instance fields
.field private blacklist mOffsetCalculated:Z

.field private blacklist mPreviewReady:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4103
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4104
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    .line 4105
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method private blacklist maybeStartListenForLayout()V
    .locals 1

    .line 4126
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_1

    .line 4127
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4128
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    goto :goto_0

    .line 4130
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4131
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 4134
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist markImagePreviewReady()V
    .locals 1

    .line 4112
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    if-nez v0, :cond_0

    .line 4113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mPreviewReady:Z

    .line 4114
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->maybeStartListenForLayout()V

    .line 4116
    :cond_0
    return-void
.end method

.method blacklist markOffsetCalculated()V
    .locals 1

    .line 4119
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    if-nez v0, :cond_0

    .line 4120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->mOffsetCalculated:Z

    .line 4121
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->maybeStartListenForLayout()V

    .line 4123
    :cond_0
    return-void
.end method

.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 4139
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4140
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    .line 4141
    return-void
.end method

.method blacklist postponeTransition()V
    .locals 1

    .line 4108
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->postponeEnterTransition()V

    .line 4109
    return-void
.end method
