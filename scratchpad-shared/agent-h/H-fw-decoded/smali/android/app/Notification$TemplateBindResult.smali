.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$TemplateBindResult$MarginSet;
    }
.end annotation


# instance fields
.field public final mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field public final mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field mRightIconHeightDp:F

.field mRightIconVisible:Z

.field mRightIconWidthDp:F

.field public final mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14615
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 14623
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 14630
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public setRightIconState(ZFFFF)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "widthDp"    # F
    .param p3, "heightDp"    # F
    .param p4, "marginEndDpIfVisible"    # F
    .param p5, "expanderSizeDp"    # F

    .line 14634
    iput-boolean p1, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    .line 14635
    iput p2, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    .line 14636
    iput p3, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    .line 14637
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 14638
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p4, p5

    invoke-virtual {v0, p5, v2}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 14639
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p4, p5

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 14640
    return-void
.end method
