.class public final Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

.field private mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private mText:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .locals 8

    .line 557
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v0}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SubItem data is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    :goto_0
    new-instance v2, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;-><init>(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData-IA;)V

    return-object v2
.end method

.method public setIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 528
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 529
    return-object p0
.end method

.method public setLoggingInfo(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;
    .locals 0
    .param p1, "loggingInfo"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 546
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mLoggingInfo:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    .line 547
    return-object p0
.end method

.method public setTapAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;
    .locals 0
    .param p1, "tapAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 537
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mTapAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 538
    return-object p0
.end method

.method public setText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;
    .locals 0
    .param p1, "text"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 519
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo$Builder;->mText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 520
    return-object p0
.end method
