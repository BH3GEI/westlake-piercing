.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1138
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 1141
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iget v0, v9, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const-string v3, "createConnectionFailed %s"

    const-string v4, "Enqueueing pre-init conference request %s"

    const-string v5, "H.CS.crCoC"

    const-string v6, "H.CS.crCoF"

    const-string v7, "H.CS.crCo"

    const-string v8, "H.CS.r"

    const-string v10, "Enqueueing pre-init request %s"

    const-string v11, "H.CS.cASC"

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    .line 1837
    :pswitch_1
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1838
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1841
    :try_start_0
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1842
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1843
    .local v3, "isMuted":Z
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monMuteStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "isMuted":Z
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1846
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1847
    nop

    .line 1848
    goto/16 :goto_d

    .line 1845
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1846
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1847
    throw v0

    .line 1823
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1824
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1827
    :try_start_1
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1828
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 1829
    .local v3, "availableCallEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monAvailableCallEndpointsChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1831
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "availableCallEndpoints":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/CallEndpoint;>;"
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1832
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1833
    nop

    .line 1834
    goto/16 :goto_d

    .line 1831
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1832
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1833
    throw v0

    .line 1809
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1810
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1813
    :try_start_2
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1814
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallEndpoint;

    .line 1815
    .local v3, "callEndpoint":Landroid/telecom/CallEndpoint;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monCallEndpointChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1817
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "callEndpoint":Landroid/telecom/CallEndpoint;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1818
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1819
    nop

    .line 1820
    goto/16 :goto_d

    .line 1817
    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1818
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1819
    throw v0

    .line 1576
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1577
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.tBNUS"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1580
    :try_start_3
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1581
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1582
    .local v3, "isTracked":Z
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1584
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "isTracked":Z
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1585
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1586
    nop

    .line 1587
    goto/16 :goto_d

    .line 1584
    :catchall_3
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1585
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1586
    throw v0

    .line 1562
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1563
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.uAU"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1566
    :try_start_4
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1567
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1568
    .local v3, "isUsingAlternativeUi":Z
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1570
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "isUsingAlternativeUi":Z
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1571
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1572
    nop

    .line 1573
    goto/16 :goto_d

    .line 1570
    :catchall_4
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1571
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1572
    throw v0

    .line 1718
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1720
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.oCFC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1722
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1723
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 1725
    .local v3, "completionInfo":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1727
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "completionInfo":Landroid/telecom/Connection$CallFilteringCompletionInfo;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1728
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1729
    nop

    .line 1730
    goto/16 :goto_d

    .line 1727
    :catchall_5
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1728
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1729
    throw v0

    .line 1492
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1493
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.cTrans"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1496
    :try_start_6
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1498
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1500
    nop

    .line 1501
    goto/16 :goto_d

    .line 1498
    :catchall_6
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1500
    throw v0

    .line 1480
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1481
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.trans"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1483
    :try_start_7
    iget v0, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_0

    move v12, v13

    .line 1484
    .local v12, "isConfirmationRequired":Z
    :cond_0
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-static {v0, v3, v4, v12}, Landroid/telecom/ConnectionService;->-$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1486
    .end local v12    # "isConfirmationRequired":Z
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1487
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1488
    nop

    .line 1489
    goto/16 :goto_d

    .line 1486
    :catchall_7
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1487
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1488
    throw v0

    .line 1664
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1666
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aP"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1668
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1670
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1671
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1672
    nop

    .line 1673
    goto/16 :goto_d

    .line 1670
    :catchall_8
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1671
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1672
    throw v0

    .line 1457
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1458
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1460
    :try_start_9
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1462
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1463
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1464
    nop

    .line 1465
    goto/16 :goto_d

    .line 1462
    :catchall_9
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1463
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1464
    throw v0

    .line 1334
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1335
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1338
    :try_start_a
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1339
    .local v5, "id":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 1340
    .local v6, "request":Landroid/telecom/ConnectionRequest;
    iget v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_1

    move v7, v13

    goto :goto_0

    :cond_1
    move v7, v12

    .line 1341
    .local v7, "isIncoming":Z
    :goto_0
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 1343
    .local v0, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1344
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    iget-object v2, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v10

    move-object v4, v0

    .end local v0    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .local v4, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    new-instance v0, Landroid/telecom/ConnectionService$2$6;

    const-string v2, "H.CS.crConfF.pIConfR"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telecom/ConnectionService$2$6;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 1355
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$6;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1345
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1357
    .end local v4    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v0    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    move-object v4, v0

    .end local v0    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v4    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    const-string v0, "createConferenceFailed %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1358
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, v4, v5, v6, v7}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1362
    .end local v4    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1363
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1364
    nop

    .line 1365
    goto/16 :goto_d

    .line 1362
    :catchall_a
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1363
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1364
    throw v0

    .line 1307
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 1308
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1311
    :try_start_b
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1312
    .local v0, "id":Ljava/lang/String;
    iget-object v5, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v5}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1313
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/telecom/ConnectionService$2$5;

    const-string v6, "H.CS.crConfC.pIConfR"

    invoke-direct {v5, v1, v6, v2, v0}, Landroid/telecom/ConnectionService$2$5;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v5}, Landroid/telecom/ConnectionService$2$5;->prepare()Ljava/lang/Runnable;

    move-result-object v2

    .line 1314
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1325
    :cond_3
    iget-object v2, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1328
    .end local v0    # "id":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1329
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1330
    nop

    .line 1331
    goto/16 :goto_d

    .line 1328
    :catchall_b
    move-exception v0

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1329
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1330
    throw v0

    .line 1269
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 1270
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1272
    :try_start_c
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    move-object v15, v4

    .line 1274
    .local v15, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 1275
    .local v16, "id":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/telecom/ConnectionRequest;

    .line 1276
    .local v17, "request":Landroid/telecom/ConnectionRequest;
    iget v0, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_4

    move/from16 v18, v13

    goto :goto_3

    :cond_4
    move/from16 v18, v12

    .line 1277
    .local v18, "isIncoming":Z
    :goto_3
    iget v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v13, :cond_5

    move/from16 v19, v13

    goto :goto_4

    :cond_5
    move/from16 v19, v12

    .line 1278
    .local v19, "isUnknown":Z
    :goto_4
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1279
    const-string v0, "Enqueueing pre-initconference request %s"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v11

    new-instance v0, Landroid/telecom/ConnectionService$2$4;

    const-string v2, "H.CS.crConf.pIConfR"

    const/4 v3, 0x0

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    .end local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "request":Landroid/telecom/ConnectionRequest;
    .end local v18    # "isIncoming":Z
    .end local v19    # "isUnknown":Z
    .local v4, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "request":Landroid/telecom/ConnectionRequest;
    .restart local v7    # "isIncoming":Z
    .local v8, "isUnknown":Z
    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1292
    .end local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    .end local v8    # "isUnknown":Z
    .restart local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "request":Landroid/telecom/ConnectionRequest;
    .restart local v18    # "isIncoming":Z
    .restart local v19    # "isUnknown":Z
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1280
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1294
    :cond_6
    iget-object v14, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v14 .. v19}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1301
    .end local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "request":Landroid/telecom/ConnectionRequest;
    .end local v18    # "isIncoming":Z
    .end local v19    # "isUnknown":Z
    :goto_5
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1302
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1303
    nop

    .line 1304
    goto/16 :goto_d

    .line 1301
    :catchall_c
    move-exception v0

    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1302
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1303
    throw v0

    .line 1435
    .end local v10    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1436
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.def"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1438
    :try_start_d
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1440
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1441
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1442
    nop

    .line 1443
    goto/16 :goto_d

    .line 1440
    :catchall_d
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1441
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1442
    throw v0

    .line 1733
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1735
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.hC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1737
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1738
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1740
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1741
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1742
    nop

    .line 1743
    goto/16 :goto_d

    .line 1740
    :catchall_e
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1741
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1742
    throw v0

    .line 1369
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_10
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 1370
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.haF"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1373
    :try_start_f
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1374
    .local v4, "id":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 1375
    .local v5, "request":Landroid/telecom/ConnectionRequest;
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1376
    .local v6, "reason":I
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1377
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v10, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v8

    new-instance v0, Landroid/telecom/ConnectionService$2$7;

    const-string v2, "H.CS.haF.pICR"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/telecom/ConnectionService$2$7;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    .line 1387
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$7;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1378
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1389
    :cond_7
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, v4, v5, v6}, Landroid/telecom/ConnectionService;->-$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1393
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "request":Landroid/telecom/ConnectionRequest;
    .end local v6    # "reason":I
    :goto_6
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1394
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1395
    nop

    .line 1396
    goto/16 :goto_d

    .line 1393
    :catchall_f
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1394
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1395
    throw v0

    .line 1803
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    .line 1804
    goto/16 :goto_d

    .line 1806
    :pswitch_12
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    .line 1807
    goto/16 :goto_d

    .line 1209
    :pswitch_13
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 1210
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v5}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1213
    :try_start_10
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1214
    .local v0, "id":Ljava/lang/String;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1215
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v10, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/telecom/ConnectionService$2$2;

    const-string v6, "H.CS.crCoC.pICR"

    invoke-direct {v5, v1, v6, v2, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v5}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v2

    .line 1216
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1227
    :cond_8
    iget-object v2, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1230
    .end local v0    # "id":Ljava/lang/String;
    :goto_7
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1231
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1232
    nop

    .line 1233
    goto/16 :goto_d

    .line 1230
    :catchall_10
    move-exception v0

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1231
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1232
    throw v0

    .line 1788
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1790
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_11
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.rTRUR"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1792
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1793
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Connection$RttTextStream;

    .line 1795
    .local v3, "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 1797
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1798
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1799
    nop

    .line 1800
    goto/16 :goto_d

    .line 1797
    :catchall_11
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1798
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1799
    throw v0

    .line 1775
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1777
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_12
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.-RTT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1779
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1780
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 1782
    .end local v0    # "callId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1783
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1784
    nop

    .line 1785
    goto/16 :goto_d

    .line 1782
    :catchall_12
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1783
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1784
    throw v0

    .line 1760
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1762
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_13
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.+RTT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1764
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1765
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Connection$RttTextStream;

    .line 1767
    .restart local v3    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 1769
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1770
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1771
    nop

    .line 1772
    goto/16 :goto_d

    .line 1769
    :catchall_13
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1770
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1771
    throw v0

    .line 1236
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1237
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1240
    :try_start_14
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1241
    .local v5, "id":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 1242
    .local v6, "request":Landroid/telecom/ConnectionRequest;
    iget v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_9

    move v7, v13

    goto :goto_8

    :cond_9
    move v7, v12

    .line 1243
    .local v7, "isIncoming":Z
    :goto_8
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 1245
    .local v4, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1246
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v10, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v10

    new-instance v0, Landroid/telecom/ConnectionService$2$3;

    const-string v2, "H.CS.crCoF.pICR"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 1256
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1247
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1258
    :cond_a
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, v4, v5, v6, v7}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 1263
    .end local v4    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    :goto_9
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1264
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1265
    nop

    .line 1266
    goto/16 :goto_d

    .line 1263
    :catchall_14
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1264
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1265
    throw v0

    .line 1746
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1748
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_15
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.oEC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1750
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1751
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1752
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 1754
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1755
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1756
    nop

    .line 1757
    goto/16 :goto_d

    .line 1754
    :catchall_15
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1755
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1756
    throw v0

    .line 1703
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_19
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1705
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_16
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sCE"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1707
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1708
    .restart local v0    # "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1709
    .local v3, "event":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1710
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v5, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v5, v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 1712
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1713
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1714
    nop

    .line 1715
    goto/16 :goto_d

    .line 1712
    :catchall_16
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1713
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1714
    throw v0

    .line 1691
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1693
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_17
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.pEC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1695
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 1697
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1698
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1699
    nop

    .line 1700
    goto/16 :goto_d

    .line 1697
    :catchall_17
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1698
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1699
    throw v0

    .line 1515
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1b
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1516
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.s"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1518
    :try_start_18
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 1520
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1521
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1522
    nop

    .line 1523
    goto/16 :goto_d

    .line 1520
    :catchall_18
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1521
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1522
    throw v0

    .line 1468
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1469
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.rWM"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1472
    :try_start_19
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 1474
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1475
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1476
    nop

    .line 1477
    goto/16 :goto_d

    .line 1474
    :catchall_19
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1475
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1476
    throw v0

    .line 1652
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1654
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1a
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1656
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 1658
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1659
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1660
    nop

    .line 1661
    goto/16 :goto_d

    .line 1658
    :catchall_1a
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1659
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1660
    throw v0

    .line 1640
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1642
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1b
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.mC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1644
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 1646
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1647
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1648
    nop

    .line 1649
    goto/16 :goto_d

    .line 1646
    :catchall_1b
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1647
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1648
    throw v0

    .line 1421
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1f
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1422
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.anV"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1425
    :try_start_1c
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1426
    .restart local v0    # "callId":Ljava/lang/String;
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1427
    .local v3, "videoState":I
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$manswerVideo(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 1429
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "videoState":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1430
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1431
    nop

    .line 1432
    goto/16 :goto_d

    .line 1429
    :catchall_1c
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1430
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1431
    throw v0

    .line 1157
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_20
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1159
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1d
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.rCSA"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1161
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v3}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 1163
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1164
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1165
    nop

    .line 1166
    goto/16 :goto_d

    .line 1163
    :catchall_1d
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1164
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1165
    throw v0

    .line 1677
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_21
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1679
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1e
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.oPDC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1681
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1682
    .restart local v0    # "callId":Ljava/lang/String;
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v13, :cond_b

    move v12, v13

    .line 1683
    .local v12, "proceed":Z
    :cond_b
    iget-object v3, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v12}, Landroid/telecom/ConnectionService;->-$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 1685
    .end local v0    # "callId":Ljava/lang/String;
    .end local v12    # "proceed":Z
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1686
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1687
    nop

    .line 1688
    goto/16 :goto_d

    .line 1685
    :catchall_1e
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1686
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1687
    throw v0

    .line 1628
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_22
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1630
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1f
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sFC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1632
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 1634
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1635
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1636
    nop

    .line 1637
    goto/16 :goto_d

    .line 1634
    :catchall_1f
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1635
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1636
    throw v0

    .line 1614
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_23
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1616
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_20
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.c"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1618
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1619
    .local v0, "callId1":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1620
    .local v3, "callId2":Ljava/lang/String;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 1622
    .end local v0    # "callId1":Ljava/lang/String;
    .end local v3    # "callId2":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1623
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1624
    nop

    .line 1625
    goto/16 :goto_d

    .line 1622
    :catchall_20
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1623
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1624
    throw v0

    .line 1602
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_24
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1604
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_21
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sDT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1606
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 1608
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1609
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1610
    nop

    .line 1611
    goto/16 :goto_d

    .line 1608
    :catchall_21
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1609
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1610
    throw v0

    .line 1590
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_25
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1592
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_22
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.pDT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1594
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 1596
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1597
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1598
    nop

    .line 1599
    goto/16 :goto_d

    .line 1596
    :catchall_22
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1597
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1598
    throw v0

    .line 1548
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_26
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1549
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1552
    :try_start_23
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1553
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallAudioState;

    .line 1554
    .local v3, "audioState":Landroid/telecom/CallAudioState;
    iget-object v4, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v5, Landroid/telecom/CallAudioState;

    invoke-direct {v5, v3}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v4, v0, v5}, Landroid/telecom/ConnectionService;->-$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1556
    .end local v0    # "callId":Ljava/lang/String;
    .end local v3    # "audioState":Landroid/telecom/CallAudioState;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1557
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1558
    nop

    .line 1559
    goto/16 :goto_d

    .line 1556
    :catchall_23
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1557
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1558
    throw v0

    .line 1537
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_27
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1538
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.u"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1540
    :try_start_24
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$munhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1542
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1543
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1544
    nop

    .line 1545
    goto/16 :goto_d

    .line 1542
    :catchall_24
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1543
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1544
    throw v0

    .line 1526
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_28
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1527
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1529
    :try_start_25
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1531
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1532
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1533
    nop

    .line 1534
    goto/16 :goto_d

    .line 1531
    :catchall_25
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1532
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1533
    throw v0

    .line 1504
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_29
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1505
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.d"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1507
    :try_start_26
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1509
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1510
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1511
    nop

    .line 1512
    goto/16 :goto_d

    .line 1509
    :catchall_26
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1510
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1511
    throw v0

    .line 1446
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2a
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1447
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1449
    :try_start_27
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 1451
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1452
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1453
    nop

    .line 1454
    goto/16 :goto_d

    .line 1451
    :catchall_27
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1452
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1453
    throw v0

    .line 1410
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2b
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1411
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.an"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1413
    :try_start_28
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$manswer(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 1415
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1416
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1417
    nop

    .line 1418
    goto/16 :goto_d

    .line 1415
    :catchall_28
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1416
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1417
    throw v0

    .line 1399
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2c
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1400
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.ab"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1402
    :try_start_29
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 1404
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1405
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1406
    nop

    .line 1407
    goto/16 :goto_d

    .line 1404
    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1405
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1406
    throw v0

    .line 1169
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2d
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 1170
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1172
    :try_start_2a
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    move-object v15, v4

    .line 1174
    .restart local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 1175
    .restart local v16    # "id":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/telecom/ConnectionRequest;

    .line 1176
    .restart local v17    # "request":Landroid/telecom/ConnectionRequest;
    iget v0, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_c

    move/from16 v18, v13

    goto :goto_a

    :cond_c
    move/from16 v18, v12

    .line 1177
    .restart local v18    # "isIncoming":Z
    :goto_a
    iget v0, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v13, :cond_d

    move/from16 v19, v13

    goto :goto_b

    :cond_d
    move/from16 v19, v12

    .line 1178
    .restart local v19    # "isUnknown":Z
    :goto_b
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1179
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v10, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    iget-object v0, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v10

    new-instance v0, Landroid/telecom/ConnectionService$2$1;

    const-string v2, "H.CS.crCo.pICR"

    const/4 v3, 0x0

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    .end local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "request":Landroid/telecom/ConnectionRequest;
    .end local v18    # "isIncoming":Z
    .end local v19    # "isUnknown":Z
    .local v4, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "request":Landroid/telecom/ConnectionRequest;
    .restart local v7    # "isIncoming":Z
    .local v8, "isUnknown":Z
    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1193
    .end local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    .end local v8    # "isUnknown":Z
    .restart local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "id":Ljava/lang/String;
    .restart local v17    # "request":Landroid/telecom/ConnectionRequest;
    .restart local v18    # "isIncoming":Z
    .restart local v19    # "isUnknown":Z
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1180
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1195
    :cond_e
    iget-object v14, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v14 .. v19}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    .line 1203
    .end local v15    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "request":Landroid/telecom/ConnectionRequest;
    .end local v18    # "isIncoming":Z
    .end local v19    # "isUnknown":Z
    :goto_c
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1204
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1205
    nop

    .line 1206
    goto :goto_d

    .line 1203
    :catchall_2a
    move-exception v0

    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1204
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1205
    throw v0

    .line 1143
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2e
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1145
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2b
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 1146
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string v4, "H.CS.aCSA"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1148
    iget-object v3, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 1149
    iget-object v3, v1, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    .line 1151
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1153
    nop

    .line 1154
    goto :goto_d

    .line 1151
    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1153
    throw v0

    .line 1853
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
    .end packed-switch
.end method
