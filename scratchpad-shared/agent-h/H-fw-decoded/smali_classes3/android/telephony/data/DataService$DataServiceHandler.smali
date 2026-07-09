.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
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

    .line 601
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 602
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 603
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .line 608
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 609
    .local v3, "slotIndex":I
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 611
    .local v4, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v16, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    goto/16 :goto_8

    .line 742
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_0
    if-nez v4, :cond_0

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 743
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$ValidationRequest;

    .line 744
    .local v0, "validationRequest":Landroid/telephony/data/DataService$ValidationRequest;
    iget v5, v0, Landroid/telephony/data/DataService$ValidationRequest;->cid:I

    iget-object v6, v0, Landroid/telephony/data/DataService$ValidationRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Landroid/telephony/data/DataService$ValidationRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 748
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {v8}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v7

    .line 744
    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/data/DataService$DataServiceProvider;->requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 726
    .end local v0    # "validationRequest":Landroid/telephony/data/DataService$ValidationRequest;
    :pswitch_1
    if-nez v4, :cond_1

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 727
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    .line 730
    .local v5, "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :try_start_0
    iget-object v0, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v6, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 732
    invoke-interface {v0, v6}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v6, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 735
    invoke-interface {v0, v6}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to call onApnUnthrottled. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 721
    .end local v5    # "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :pswitch_2
    if-nez v4, :cond_3

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 722
    :cond_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 723
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 724
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 717
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_3
    if-nez v4, :cond_4

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 718
    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 719
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 710
    :pswitch_4
    if-nez v4, :cond_5

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 711
    :cond_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 712
    .local v0, "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 713
    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_6

    .line 714
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1

    :cond_6
    nop

    .line 712
    :goto_1
    invoke-virtual {v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 715
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 703
    .end local v0    # "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_5
    if-nez v4, :cond_7

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 704
    :cond_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 705
    .local v0, "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 706
    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_8

    .line 707
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_2

    :cond_8
    nop

    .line 705
    :goto_2
    invoke-virtual {v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 708
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 693
    .end local v0    # "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_6
    if-nez v4, :cond_9

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 694
    :cond_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 697
    .local v5, "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :try_start_1
    iget-object v0, v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v6, v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, v6}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 700
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 698
    :catch_1
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to call onDataCallListChanged. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 688
    .end local v5    # "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :pswitch_7
    if-nez v4, :cond_a

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 689
    :cond_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 690
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 691
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 684
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_8
    if-nez v4, :cond_b

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 685
    :cond_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 686
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 678
    :pswitch_9
    if-nez v4, :cond_c

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 680
    :cond_c
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, v5}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    .line 682
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 668
    :pswitch_a
    if-nez v4, :cond_d

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 669
    :cond_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 671
    .local v0, "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    iget-object v6, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 673
    iget-object v8, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v8, :cond_e

    .line 674
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v8, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v8}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_3

    .line 675
    :cond_e
    nop

    .line 671
    :goto_3
    invoke-virtual {v4, v6, v7, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 676
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 658
    .end local v0    # "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    :pswitch_b
    if-nez v4, :cond_f

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 659
    :cond_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 661
    .local v0, "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    iget-object v6, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 663
    iget-object v8, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v8, :cond_10

    .line 664
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v8, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v8}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_4

    .line 665
    :cond_10
    nop

    .line 661
    :goto_4
    invoke-virtual {v4, v6, v7, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 666
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 648
    .end local v0    # "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    :pswitch_c
    if-nez v4, :cond_11

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 649
    :cond_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 651
    .local v0, "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    iget v6, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 653
    iget-object v8, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v8, :cond_12

    .line 654
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v8, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v8}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_5

    .line 655
    :cond_12
    nop

    .line 651
    :goto_5
    invoke-virtual {v4, v6, v7, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    .line 656
    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 634
    .end local v0    # "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    :pswitch_d
    if-nez v4, :cond_13

    move-object/from16 v16, v4

    goto/16 :goto_8

    .line 635
    :cond_13
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 636
    .local v0, "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    move-object v6, v5

    iget v5, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    move-object v7, v6

    iget-object v6, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    move-object v8, v7

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    move-object v9, v8

    iget-boolean v8, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    move-object v10, v9

    iget v9, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    move-object v11, v10

    iget-object v10, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    move-object v12, v11

    iget v11, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    move-object v13, v12

    iget-object v12, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object v14, v13

    iget-object v13, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    move-object v15, v14

    iget-boolean v14, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    .line 642
    iget-object v15, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v15, :cond_14

    .line 643
    new-instance v15, Landroid/telephony/data/DataServiceCallback;

    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget-object v4, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v15, v4}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_6

    .line 644
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_14
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    const/4 v15, 0x0

    .line 636
    :goto_6
    move-object/from16 v4, v16

    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    invoke-virtual/range {v4 .. v15}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 646
    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    goto :goto_8

    .line 625
    .end local v0    # "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_e
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    const/4 v0, 0x0

    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v0, "i":I
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :goto_7
    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v5}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_16

    .line 626
    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v5}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 627
    if-eqz v4, :cond_15

    .line 628
    invoke-virtual {v4}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 625
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 631
    .end local v0    # "i":I
    :cond_16
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 632
    goto :goto_9

    .line 619
    :pswitch_f
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v16, :cond_17

    .line 620
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 621
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8

    .line 613
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_10
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v4

    .line 614
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v4, :cond_18

    .line 615
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 751
    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_17
    :goto_8
    move-object/from16 v4, v16

    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_18
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
