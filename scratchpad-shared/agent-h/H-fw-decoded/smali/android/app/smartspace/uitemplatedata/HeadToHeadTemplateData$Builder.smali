.class public final Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.source "HeadToHeadTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
    .locals 15

    .line 284
    new-instance v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getTemplateType()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    .line 286
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getLayoutWeight()I

    move-result v7

    iget-object v8, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v9, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v10, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v11, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v12, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v13, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData-IA;)V

    .line 284
    return-object v0
.end method

.method public setHeadToHeadAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 275
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 276
    return-object p0
.end method

.method public setHeadToHeadFirstCompetitorIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadFirstCompetitorIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 236
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 237
    return-object p0
.end method

.method public setHeadToHeadFirstCompetitorText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadFirstCompetitorText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 256
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 257
    return-object p0
.end method

.method public setHeadToHeadSecondCompetitorIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadSecondCompetitorIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 246
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 247
    return-object p0
.end method

.method public setHeadToHeadSecondCompetitorText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadSecondCompetitorText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 266
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 267
    return-object p0
.end method

.method public setHeadToHeadTitle(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadTitle"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 226
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    .line 227
    return-object p0
.end method
