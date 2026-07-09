.class public final Landroid/app/smartspace/SmartspaceTarget$Builder;
.super Ljava/lang/Object;
.source "SmartspaceTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAssociatedSmartspaceTargetId:Ljava/lang/String;

.field private mBaseAction:Landroid/app/smartspace/SmartspaceAction;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mCreationTimeMillis:J

.field private mExpiryTimeMillis:J

.field private mFeatureType:I

.field private mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

.field private mIconGrid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mScore:F

.field private mSensitive:Z

.field private mShouldShowExpanded:Z

.field private mSliceUri:Landroid/net/Uri;

.field private final mSmartspaceTargetId:Ljava/lang/String;

.field private mSourceNotificationKey:Ljava/lang/String;

.field private mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private mWidget:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "smartspaceTargetId"    # Ljava/lang/String;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mActionChips:Ljava/util/List;

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mIconGrid:Ljava/util/List;

    .line 623
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSmartspaceTargetId:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 625
    iput-object p3, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 626
    return-void
.end method


# virtual methods
.method public build()Landroid/app/smartspace/SmartspaceTarget;
    .locals 25

    .line 802
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSmartspaceTargetId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    .line 807
    new-instance v2, Landroid/app/smartspace/SmartspaceTarget;

    iget-object v3, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSmartspaceTargetId:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v5, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iget-wide v6, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mCreationTimeMillis:J

    iget-wide v8, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mExpiryTimeMillis:J

    iget v10, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mScore:F

    iget-object v11, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mActionChips:Ljava/util/List;

    iget-object v12, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mIconGrid:Ljava/util/List;

    iget v13, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mFeatureType:I

    iget-boolean v14, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSensitive:Z

    iget-boolean v15, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mShouldShowExpanded:Z

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSourceNotificationKey:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSliceUri:Landroid/net/Uri;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    const/16 v24, 0x0

    move-object/from16 v23, v1

    invoke-direct/range {v2 .. v24}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/widget/RemoteViews;Landroid/app/smartspace/SmartspaceTarget-IA;)V

    return-object v2

    .line 805
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please assign a value to all @NonNull args."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setActionChips(Ljava/util/List;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;)",
            "Landroid/app/smartspace/SmartspaceTarget$Builder;"
        }
    .end annotation

    .line 678
    .local p1, "actionChips":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/SmartspaceAction;>;"
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mActionChips:Ljava/util/List;

    .line 679
    return-object p0
.end method

.method public setAssociatedSmartspaceTargetId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "associatedSmartspaceTargetId"    # Ljava/lang/String;

    .line 733
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    .line 734
    return-object p0
.end method

.method public setBaseAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "baseAction"    # Landroid/app/smartspace/SmartspaceAction;

    .line 642
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    .line 643
    return-object p0
.end method

.method public setCreationTimeMillis(J)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "creationTimeMillis"    # J

    .line 651
    iput-wide p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mCreationTimeMillis:J

    .line 652
    return-object p0
.end method

.method public setExpiryTimeMillis(J)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "expiryTimeMillis"    # J

    .line 660
    iput-wide p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mExpiryTimeMillis:J

    .line 661
    return-object p0
.end method

.method public setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "featureType"    # I

    .line 696
    iput p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mFeatureType:I

    .line 697
    return-object p0
.end method

.method public setHeaderAction(Landroid/app/smartspace/SmartspaceAction;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "headerAction"    # Landroid/app/smartspace/SmartspaceAction;

    .line 633
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    .line 634
    return-object p0
.end method

.method public setIconGrid(Ljava/util/List;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;)",
            "Landroid/app/smartspace/SmartspaceTarget$Builder;"
        }
    .end annotation

    .line 687
    .local p1, "iconGrid":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/SmartspaceAction;>;"
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mIconGrid:Ljava/util/List;

    .line 688
    return-object p0
.end method

.method public setRemoteViews(Landroid/widget/RemoteViews;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 787
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_0

    .line 791
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 792
    return-object p0

    .line 788
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Widget providers and RemoteViews cannot be used at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScore(F)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "score"    # F

    .line 669
    iput p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mScore:F

    .line 670
    return-object p0
.end method

.method public setSensitive(Z)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "sensitive"    # Z

    .line 705
    iput-boolean p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSensitive:Z

    .line 706
    return-object p0
.end method

.method public setShouldShowExpanded(Z)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "shouldShowExpanded"    # Z

    .line 714
    iput-boolean p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mShouldShowExpanded:Z

    .line 715
    return-object p0
.end method

.method public setSliceUri(Landroid/net/Uri;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 744
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSliceUri:Landroid/net/Uri;

    .line 745
    return-object p0
.end method

.method public setSourceNotificationKey(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "sourceNotificationKey"    # Ljava/lang/String;

    .line 723
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mSourceNotificationKey:Ljava/lang/String;

    .line 724
    return-object p0
.end method

.method public setTemplateData(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 0
    .param p1, "templateData"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 772
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    .line 773
    return-object p0
.end method

.method public setWidget(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/app/smartspace/SmartspaceTarget$Builder;
    .locals 2
    .param p1, "widget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 758
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 762
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget$Builder;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    .line 763
    return-object p0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Widget providers and RemoteViews cannot be used at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
