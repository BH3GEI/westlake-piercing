.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field blacklist mD1:I

.field blacklist mD2:I

.field blacklist mD3:I

.field blacklist mD4:I

.field blacklist mDrawablesLoaded:Z

.field blacklist mI1:Landroid/graphics/drawable/Icon;

.field blacklist mI2:Landroid/graphics/drawable/Icon;

.field blacklist mI3:Landroid/graphics/drawable/Icon;

.field blacklist mI4:Landroid/graphics/drawable/Icon;

.field blacklist mId1:Landroid/graphics/drawable/Drawable;

.field blacklist mId2:Landroid/graphics/drawable/Drawable;

.field blacklist mId3:Landroid/graphics/drawable/Drawable;

.field blacklist mId4:Landroid/graphics/drawable/Drawable;

.field blacklist mIsRelative:Z

.field blacklist mUseIcons:Z


# direct methods
.method public constructor blacklist <init>(IZIIII)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "isRelative"    # Z
    .param p3, "d1"    # I
    .param p4, "d2"    # I
    .param p5, "d3"    # I
    .param p6, "d4"    # I

    .line 4559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4551
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4555
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4560
    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4561
    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4562
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4563
    iput p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4564
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4565
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4566
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4567
    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "isRelative"    # Z
    .param p3, "i1"    # Landroid/graphics/drawable/Icon;
    .param p4, "i2"    # Landroid/graphics/drawable/Icon;
    .param p5, "i3"    # Landroid/graphics/drawable/Icon;
    .param p6, "i4"    # Landroid/graphics/drawable/Icon;

    .line 4570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4551
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4555
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4571
    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4572
    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4574
    iput-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    .line 4575
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    .line 4576
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    .line 4577
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    .line 4578
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 4580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4551
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4555
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4584
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_2

    .line 4585
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    .line 4586
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    .line 4587
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    .line 4588
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    goto :goto_1

    .line 4590
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4595
    :goto_1
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .locals 18
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4748
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 4750
    .local v1, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, 0x10b00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4752
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v5, 0x10b00000003L

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4754
    const-wide v7, 0x10b00000011L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 4755
    .local v7, "token":J
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eq v2, v10, :cond_2

    .line 4756
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v13, 0x4

    const-string v11, "Unhandled field while reading RemoteViews proto!\n"

    const-string v12, "RemoteViews"

    packed-switch v2, :pswitch_data_0

    .line 4851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4852
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4851
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto :goto_0

    .line 4810
    :pswitch_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v14

    .line 4812
    .local v14, "iconsToken":J
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    if-eq v2, v10, :cond_0

    .line 4813
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 4843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4845
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4843
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_1

    .line 4836
    :pswitch_1
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 4838
    invoke-static {v0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v10

    .line 4837
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4841
    const/4 v10, -0x1

    goto :goto_1

    .line 4829
    :pswitch_2
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 4831
    invoke-static {v0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v10

    .line 4830
    const/4 v13, 0x3

    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4834
    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_1

    .line 4822
    :pswitch_3
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 4824
    const-wide v5, 0x10b00000002L

    invoke-static {v0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v5

    .line 4823
    const/4 v6, 0x2

    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4827
    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_1

    .line 4815
    :pswitch_4
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4817
    const-wide v2, 0x10b00000001L

    invoke-static {v0, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v2

    .line 4816
    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4820
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto/16 :goto_1

    .line 4848
    :cond_0
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4849
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_0

    .line 4767
    .end local v14    # "iconsToken":J
    :pswitch_5
    const-wide v2, 0x10b00000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 4769
    .local v4, "resourcesToken":J
    :goto_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_1

    .line 4770
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    .line 4802
    const/4 v15, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4804
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4802
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x10b00000003L

    goto :goto_2

    .line 4794
    :pswitch_6
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4796
    const-wide v14, 0x10900000004L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4795
    const/4 v15, 0x4

    invoke-virtual {v6, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4800
    goto :goto_2

    .line 4786
    :pswitch_7
    const/4 v15, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4788
    const-wide v13, 0x10900000003L

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v13

    .line 4787
    const/4 v14, 0x3

    invoke-virtual {v6, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4792
    goto :goto_2

    .line 4779
    :pswitch_8
    const/4 v14, 0x3

    const/4 v15, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4781
    const-wide v14, 0x10900000002L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4780
    const/4 v15, 0x2

    invoke-virtual {v6, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4784
    goto :goto_2

    .line 4772
    :pswitch_9
    const/4 v15, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4774
    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4773
    invoke-virtual {v6, v9, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4777
    const-wide v2, 0x10b00000003L

    goto/16 :goto_2

    .line 4807
    :cond_1
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4808
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_0

    .line 4762
    .end local v4    # "resourcesToken":J
    :pswitch_a
    nop

    .line 4763
    const-wide v2, 0x10800000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4762
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4765
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_0

    .line 4758
    :pswitch_b
    nop

    .line 4759
    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    .line 4758
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4760
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_0

    .line 4855
    :cond_2
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4857
    new-array v2, v9, [J

    const/4 v3, 0x0

    const-wide v16, 0x10900000001L

    aput-wide v16, v2, v3

    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4859
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .locals 11
    .param p0, "values"    # Landroid/util/LongSparseArray;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4860
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 4862
    .local v3, "viewId":I
    nop

    .line 4863
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 4865
    .local v0, "icons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RemoteViews$PendingResources<Landroid/graphics/drawable/Icon;>;>;"
    const-wide v1, 0x10b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4867
    .local v1, "resArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    nop

    .line 4868
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4867
    const-wide v5, 0x10800000002L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4869
    .local v4, "isRelative":Z
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lez v5, :cond_0

    .line 4870
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    .line 4871
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v5, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 4872
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v8, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Icon;

    .line 4873
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    .line 4874
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    move-object v10, v8

    move-object v8, v6

    move-object v6, v10

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    .line 4870
    return-object v2

    .line 4876
    :cond_0
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2, v1, v9}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    .line 4877
    .local v5, "first":I
    :goto_0
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {p2, v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v2

    .line 4878
    .local v8, "second":I
    :goto_1
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p2, v1, v7}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v2

    .line 4879
    .local v7, "third":I
    :goto_2
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {p2, v1, v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v2

    .line 4880
    .local v2, "fourth":I
    :cond_4
    move v6, v8

    move v8, v2

    .end local v2    # "fourth":I
    .local v6, "second":I
    .local v8, "fourth":I
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    return-object v2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4616
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4617
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    return-void

    .line 4618
    :cond_0
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    if-eqz v1, :cond_2

    .line 4619
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v1, :cond_1

    .line 4620
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 4622
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 4624
    :cond_2
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v1, :cond_8

    .line 4625
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4626
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4627
    .local v2, "id1":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4628
    .local v4, "id2":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    move-object v5, v3

    goto :goto_2

    :cond_5
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4629
    .local v5, "id3":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4630
    .local v3, "id4":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v6, :cond_7

    .line 4631
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 4633
    :cond_7
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4635
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id4":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v5    # "id3":Landroid/graphics/drawable/Drawable;
    :goto_4
    goto :goto_5

    .line 4636
    :cond_8
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v1, :cond_9

    .line 4637
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_5

    .line 4639
    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4642
    :goto_5
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .locals 1

    .line 4694
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 4679
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .locals 10
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4647
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4648
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1

    .line 4650
    :cond_0
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v1, :cond_1

    .line 4651
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iget-object v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    .line 4652
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-direct/range {v3 .. v9}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    move-object v2, v3

    :goto_0
    nop

    .line 4655
    .local v2, "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4656
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4658
    .local v1, "ctx":Landroid/content/Context;
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 4659
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    .line 4660
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_2
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    .line 4661
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    .line 4662
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_4
    iput-object v4, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    .line 4664
    :cond_6
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-nez v3, :cond_7

    move-object v3, v4

    goto :goto_5

    :cond_7
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_5
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    .line 4665
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-nez v3, :cond_8

    move-object v3, v4

    goto :goto_6

    :cond_8
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_6
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    .line 4666
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-nez v3, :cond_9

    move-object v3, v4

    goto :goto_7

    :cond_9
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_7
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    .line 4667
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_8
    iput-object v4, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    .line 4669
    :goto_9
    return-object v2
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 1

    .line 4674
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    return v0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 4684
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_0

    .line 4685
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4686
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4687
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4688
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4690
    :cond_0
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4598
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4599
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4600
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4601
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_0

    .line 4602
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4603
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4604
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4605
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 4607
    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4608
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4609
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4610
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4612
    :goto_0
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 11
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 4700
    const-wide v0, 0x10b00000011L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4701
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4702
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4701
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4703
    const-wide v5, 0x10800000002L

    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4704
    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const-wide v5, 0x10b00000003L

    if-eqz v2, :cond_4

    .line 4705
    const-wide v2, 0x10b00000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4706
    .local v7, "iconsToken":J
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_0

    .line 4707
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const-wide v9, 0x10b00000001L

    invoke-static {p1, p3, v4, v9, v10}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4710
    :cond_0
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_1

    .line 4711
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    const-wide v9, 0x10b00000002L

    invoke-static {p1, p3, v4, v9, v10}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4714
    :cond_1
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_2

    .line 4715
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {p1, p3, v4, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4718
    :cond_2
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_3

    .line 4719
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {p1, p3, v4, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4722
    :cond_3
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4723
    .end local v7    # "iconsToken":J
    goto :goto_0

    .line 4724
    :cond_4
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4725
    .local v5, "resourcesToken":J
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-eqz v2, :cond_5

    .line 4726
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4727
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4726
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4729
    :cond_5
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-eqz v2, :cond_6

    .line 4730
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4731
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4730
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4733
    :cond_6
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-eqz v2, :cond_7

    .line 4734
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4735
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4734
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4737
    :cond_7
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-eqz v2, :cond_8

    .line 4738
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4739
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4738
    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4741
    :cond_8
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4743
    .end local v5    # "resourcesToken":J
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4744
    return-void
.end method
