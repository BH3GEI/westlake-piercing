.class Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnStylusHandwritingResponse"
.end annotation


# instance fields
.field final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1910
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1911
    iput p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    .line 1912
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1913
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1915
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    .line 1917
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1918
    return-void
.end method

.method static synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 1
    .param p0, "response"    # Landroid/widget/RemoteViews$RemoteResponse;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1939
    iget-object v0, p2, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {p0, p1, v0}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 1927
    iget v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1928
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1930
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use setOnStylusHandwritingPendingIntent for collection item (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    return-void

    .line 1936
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 1937
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v1

    .line 1938
    .local v1, "response":Landroid/widget/RemoteViews$RemoteResponse;
    new-instance v2, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0, p3}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 1940
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAllowedHandwritingDelegatePackage(Ljava/lang/String;)V

    .line 1941
    .end local v1    # "response":Landroid/widget/RemoteViews$RemoteResponse;
    goto :goto_0

    .line 1942
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 1943
    invoke-virtual {v0, v1}, Landroid/view/View;->setAllowedHandwritingDelegatePackage(Ljava/lang/String;)V

    .line 1945
    :goto_0
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 1949
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1921
    iget v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1922
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1923
    return-void
.end method
