.class final Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/AvrcpControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    .line 1645
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1644
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/avrcp/AvrcpControllerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1650
    const-string/jumbo v28, "AvrcpControllerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " HandleMessage: "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1651
    const-string/jumbo v29, " Remote Connected "

    .line 1650
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v27, 0x0

    .line 1650
    :goto_0
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    .line 1649
    :cond_0
    :goto_1
    return-void

    .line 1651
    :cond_1
    const/16 v27, 0x1

    goto :goto_0

    .line 1654
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1655
    .local v12, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v12}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-static/range {v27 .. v30}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;[BII)Z

    goto :goto_1

    .line 1661
    .end local v12    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dp/A2dpSinkService;

    move-result-object v6

    .line 1662
    .local v6, "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    if-nez v6, :cond_2

    .line 1663
    const-string/jumbo v27, "AvrcpControllerService"

    const-string/jumbo v28, " A2DP Sink service not started, MetaData will not proceed"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-void

    .line 1666
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap15(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap9(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto :goto_1

    .line 1670
    .end local v6    # "a2dpSinkService":Lcom/android/bluetooth/a2dp/A2dpSinkService;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap9(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1674
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap8(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    goto/16 :goto_1

    .line 1677
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1680
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0x6

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_0

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap4(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    goto/16 :goto_1

    .line 1684
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap19(Lcom/android/bluetooth/avrcp/AvrcpControllerService;II)V

    goto/16 :goto_1

    .line 1687
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap3(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    goto/16 :goto_1

    .line 1690
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1691
    .local v9, "cmd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v9}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap10(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1705
    .end local v9    # "cmd":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap10(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1709
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap5(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1712
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v27

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;I)I

    goto/16 :goto_1

    .line 1716
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0x9

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1717
    const-string/jumbo v27, "AvrcpControllerService"

    const-string/jumbo v28, " Get Play Status Already There, return "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return-void

    .line 1720
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    .line 1721
    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 1720
    const/16 v29, 0x64

    .line 1721
    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 1720
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 1722
    .local v16, "messsag":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const-wide/16 v28, 0x7d0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap7(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    goto/16 :goto_1

    .line 1727
    .end local v16    # "messsag":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 1730
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1731
    .local v25, "remoteFeatures":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/bluetooth/BluetoothDevice;

    .line 1732
    .local v24, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_0

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v28

    .line 1739
    const/16 v29, 0x2

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 1738
    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1744
    .end local v24    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v25    # "remoteFeatures":I
    :sswitch_e
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1745
    .local v11, "connected":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/bluetooth/BluetoothDevice;

    .line 1746
    .local v26, "rtDevice":Landroid/bluetooth/BluetoothDevice;
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_6

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    if-nez v27, :cond_5

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    new-instance v28, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-direct/range {v28 .. v30}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    .line 1754
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-set0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-set1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    new-instance v28, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-set2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-set3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    .line 1759
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-set4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    goto/16 :goto_1

    .line 1766
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0xa

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->resetMetaData()V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->absVolNotificationState:I

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    .line 1777
    const-string/jumbo v27, "AvrcpControllerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " RC_features, conn_change down "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->mRemoteFeatures:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    goto/16 :goto_1

    .line 1784
    .end local v11    # "connected":I
    .end local v26    # "rtDevice":Landroid/bluetooth/BluetoothDevice;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 1785
    .local v10, "company_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get0(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1789
    .end local v10    # "company_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 1790
    .local v15, "events_supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get1(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "event$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    .line 1793
    .local v13, "event":Ljava/lang/Byte;
    new-instance v19, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;-><init>(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;)V

    .line 1794
    .local v19, "notifyevent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-byte v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_event_id:B

    .line 1795
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-byte v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;->notify_state:B

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1798
    .end local v13    # "event":Ljava/lang/Byte;
    .end local v19    # "notifyevent":Lcom/android/bluetooth/avrcp/AvrcpControllerService$NotifyEvents;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap16(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1801
    .end local v14    # "event$iterator":Ljava/util/Iterator;
    .end local v15    # "events_supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/List;

    .line 1802
    .local v22, "player_settings_supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get4(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0x5

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1807
    .end local v22    # "player_settings_supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/avrcp/AvrcpControllerService$PlayerSettings;>;"
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->playerSettingAttribIdFetch:I

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap6(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1811
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap20(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get3(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v28

    const/16 v29, 0x3

    invoke-virtual/range {v28 .. v29}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1816
    :sswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 1817
    .local v17, "notificationId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 1818
    .local v18, "notificationType":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 1819
    .local v7, "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v7}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap13(Lcom/android/bluetooth/avrcp/AvrcpControllerService;IILjava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1822
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    .end local v17    # "notificationId":I
    .end local v18    # "notificationType":I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->mRemoteData:Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$RemoteAvrcpData;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService$Metadata;)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0xfa8

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v27

    .line 1822
    if-eqz v27, :cond_9

    .line 1824
    :cond_8
    const-string/jumbo v27, "AvrcpControllerService"

    const-string/jumbo v28, " ID reset, Fetch from Fresh"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-get2(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1828
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 1829
    .local v23, "processMode":I
    if-nez v23, :cond_a

    .line 1831
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 1832
    .local v20, "numAttributes":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 1833
    .local v8, "bbRsp":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap12(Lcom/android/bluetooth/avrcp/AvrcpControllerService;ILjava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1835
    .end local v8    # "bbRsp":Ljava/nio/ByteBuffer;
    .end local v20    # "numAttributes":I
    :cond_a
    const/16 v27, 0x3

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap5(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1839
    .end local v23    # "processMode":I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/nio/ByteBuffer;

    .line 1840
    .local v21, "playStatusRsp":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap14(Lcom/android/bluetooth/avrcp/AvrcpControllerService;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_1

    .line 1843
    .end local v21    # "playStatusRsp":Ljava/nio/ByteBuffer;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap18(Lcom/android/bluetooth/avrcp/AvrcpControllerService;I)V

    goto/16 :goto_1

    .line 1846
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/AvrcpControllerService$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/AvrcpControllerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/avrcp/AvrcpControllerService;->-wrap11(Lcom/android/bluetooth/avrcp/AvrcpControllerService;)V

    goto/16 :goto_1

    .line 1652
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_a
        0x9 -> :sswitch_c
        0xa -> :sswitch_7
        0x64 -> :sswitch_8
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_10
        0x3ec -> :sswitch_11
        0x3ed -> :sswitch_12
        0x3ee -> :sswitch_13
        0x3f0 -> :sswitch_15
        0x3f1 -> :sswitch_16
        0x3f7 -> :sswitch_14
        0x3f8 -> :sswitch_17
        0x3f9 -> :sswitch_18
        0x44c -> :sswitch_d
        0x4b0 -> :sswitch_e
        0x7d1 -> :sswitch_9
        0x7d2 -> :sswitch_9
        0x7d5 -> :sswitch_9
        0x7d8 -> :sswitch_9
        0x7dd -> :sswitch_9
        0xbb9 -> :sswitch_9
        0xbba -> :sswitch_9
        0xbbb -> :sswitch_9
        0xbbc -> :sswitch_9
        0xbbd -> :sswitch_9
        0xbbe -> :sswitch_9
        0xbbf -> :sswitch_9
        0xfa8 -> :sswitch_b
    .end sparse-switch
.end method
